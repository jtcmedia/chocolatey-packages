import-module au
. (Join-Path '..' 'helper-scripts' 'Get-GitHubLatestReleaseLinks.ps1')

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
      
        ".\tools\chocolateyinstall.ps1" = @{
          "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
          "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Get-GitHubLatestReleaseLinks -User "opentrack" -Repository "opentrack"
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href | % { 'https://github.com' + $_ }

    $version = $url -split '-|\.exe' | select -Last 1 -Skip 3
    
    @{
        URL32 = $url
        Version = $version
        ReleaseNotes = "https://github.com/opentrack/opentrack/releases/tag/opentrack-${version}"
    }
}

update -ChecksumFor 32
