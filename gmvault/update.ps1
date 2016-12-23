import-module au

$releases = 'http://gmvault.org/download.html'

function global:au_SearchReplace {
    @{
        ".\legal\VERIFICATION.txt" = @{
            "(?i)(\s+x32:).*"           = "`${1} $($Latest.URL32)"
            "(?i)(\s+checksum32:).*"    = "`${1} $($Latest.Checksum32)"
            "(?i)(Get-RemoteChecksum).*" = "`${1} $($Latest.URL32)"
        }
    }
}


function global:au_BeforeUpdate { Get-RemoteFiles -Purge }


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = 'exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
        
    $version = ($url -split '_|.exe' | select -Last 1 -Skip 1).Substring(1)
    
    return @{ URL32 = $url; Version = $version }
}

update -ChecksumFor none
