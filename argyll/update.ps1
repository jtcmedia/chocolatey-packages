import-module chocolatey-au
. (Join-Path '..' 'helper-scripts' | Join-Path -ChildPath 'Get-GitHubLatestReleaseLinks.ps1')

function global:au_SearchReplace {
    @{
        ".\legal\VERIFICATION.txt" = @{
          "(?i)(\s+x32:).*"                   = "`${1} $($Latest.URL32)"
          "(?i)(\s+x64:).*"                   = "`${1} $($Latest.URL64)"
          "(?i)(Get-RemoteChecksum).*"        = "`${1} $($Latest.URL64)"
          "(?i)(\s+checksum32:).*"            = "`${1} $($Latest.Checksum32)"
          "(?i)(\s+checksum64:).*"            = "`${1} $($Latest.Checksum64)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }


function global:au_GetLatest {
    $download_page = Get-GitHubLatestReleaseLinks -User "eoyilmaz" -Repository "argyllcms-binaries"
    
    $regex = '.zip$'
    $url = $download_page.links | ? href -match $regex | select -First 2 -expand href | % { 'https://github.com' + $_ }

    $version = $url[1] -split '_' | select -First 1 -Skip 1
    
    @{
        URL32 = $url[0]
        URL64 = $url[1]
        Version = $version.Replace('V','')
    }
}

update -ChecksumFor none
