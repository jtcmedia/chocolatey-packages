import-module au
. $([System.IO.Path]::Combine("..", 'helper-scripts', 'Get-GitHubLatestReleaseLinks.ps1'))


function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
      
        ".\legal\VERIFICATION.txt" = @{
          "(?i)(\s+x32:).*"                   = "`${1} $($Latest.URL32)"
          "(?i)(Get-RemoteChecksum).*"        = "`${1} $($Latest.URL32)"
          "(?i)(\s+checksum32:).*"            = "`${1} $($Latest.Checksum32)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge }

function global:au_GetLatest {
    $download_page = Get-GitHubLatestReleaseLinks -User "avisynth" -Repository "avisynthplus"
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | Select-Object -First 1 -expand href | % { 'https://github.com' + $_ }

    $version = $url -split '_' | Select-Object -Last 1 -Skip 1

    @{
      URL32 = $url
      Version = $version
      ReleaseNotes = "https://github.com/avisynth/avisynthplus/releases/tag/v${version}"
    }
}

update -ChecksumFor none
