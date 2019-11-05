import-module au

$releases = 'https://www.pagina.gmbh/produkte/epub-checker/'

function global:au_SearchReplace {
    @{
        ".\tools\VERIFICATION.txt" = @{
          "(?i)(\s+x32:).*"                   = "`${1} $($Latest.URL32)"
          "(?i)(Get-RemoteChecksum).*"        = "`${1} $($Latest.URL32)"
          "(?i)(\s+checksum32:).*"            = "`${1} $($Latest.Checksum32)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '\.zip$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href

    $version = $url -split '-|\.zip' | select -Last 1 -Skip 1
    
    return @{ URL32 = $url; Version = $version }
}

update -ChecksumFor none
