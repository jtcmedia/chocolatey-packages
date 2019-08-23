import-module au

$releases = 'https://github.com/balena-io/balena-cli/releases'

function global:au_SearchReplace {
    @{
        ".\legal\VERIFICATION.txt" = @{
          "(?i)(\s+x64:).*"                   = "`${1} $($Latest.URL64)"
          "(?i)(Get-RemoteChecksum).*"        = "`${1} $($Latest.URL64)"
          "(?i)(\s+checksum64:).*"            = "`${1} $($Latest.Checksum64)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge }

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url = $download_page.links | Where-Object href -match $regex | Select-Object -First 1 -expand href

    $version = ($url -split '/|-' | Select-Object -Last 1 -Skip 3).Substring(1)
    
    $url64 = 'https://github.com' + $url
    
    return @{ URL64 = $url64; Version = $version }
}

update -ChecksumFor none