import-module chocolatey-au
. (Join-Path '..' 'helper-scripts' | Join-Path -ChildPath 'Get-GitHubLatestReleaseLinks.ps1')

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
      
        ".\tools\VERIFICATION.txt" = @{
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
    $download_page = Get-GitHubLatestReleaseLinks -User "vassalengine" -Repository "vassal"
    
    $regex = 'windows-x86'
    $urls = $download_page.links | ? href -match $regex | select -First 2 -expand href | % { 'https://github.com' + $_ }

    $version = $urls[1] -split '-' | select -First 1 -Skip 1
    
    @{
        URL32 = $urls[0]
        URL64 = $urls[1]
        Version = $version
        ReleaseNotes = "https://github.com/vassalengine/vassal/releases/tag/${version}"
    }
}

update -ChecksumFor none
