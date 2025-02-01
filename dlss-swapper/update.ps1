import-module chocolatey-au
. (Join-Path '..' 'helper-scripts' | Join-Path -ChildPath 'Get-GitHubLatestReleaseLinks.ps1')

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
      
        ".\tools\VERIFICATION.txt" = @{
          "(?i)(\s+x64:).*"                   = "`${1} $($Latest.URL64)"
          "(?i)(Get-RemoteChecksum).*"        = "`${1} $($Latest.URL64)"
          "(?i)(\s+checksum64:).*"            = "`${1} $($Latest.Checksum64)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge }

function global:au_GetLatest {
    $download_page = Get-GitHubLatestReleaseLinks -User "beeradmoore" -Repository "dlss-swapper"
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href | % { 'https://github.com' + $_ }

    $version = ($url -split '-' | select -Last 1 -Skip 1).Substring(0,5)
    
    @{
        URL64 = $url
        Version = $version
        ReleaseNotes = "https://github.com/beeradmoore/dlss-swapper/releases/tag/v${version}"
    }
}

update -ChecksumFor none
