import-module au

$releases = 'https://energia.nu/download/'

function global:au_SearchReplace {
    @{
        ".\tools\VERIFICATION.txt" = @{
            "(?i)(\s+x32:).*"            = "`${1} $($Latest.URL32)"
            "(?i)(\s+checksum32:).*"     = "`${1} $($Latest.Checksum32)"
            "(?i)(Get-RemoteChecksum).*" = "`${1} $($Latest.URL32)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -FileNameBase $Latest.FileName }

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Ssl3,Tls,Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols
    
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = 'windows.zip$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
    
    $file = $url -split '=' | select -Last 1
    
    $version = $url -split '-' | select -Index 1
    $version = $version -replace 'E', '.'
    
    return @{ URL32 = $url; Version = $version; FileName = $file }
}

update -ChecksumFor None
