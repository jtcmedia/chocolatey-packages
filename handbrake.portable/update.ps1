import-module chocolatey-au
. (Join-Path '..' 'helper-scripts' | Join-Path -ChildPath 'Get-GitHubLatestReleaseLinks.ps1')

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
      
        ".\legal\VERIFICATION.txt" = @{
            "(?i)(\s+x64:).*"            = "`${1} $($Latest.URL64)"
            "(?i)(\s+checksum64:).*"     = "`${1} $($Latest.Checksum64)"
            "(?i)(Get-RemoteChecksum).*" = "`${1} $($Latest.URL64)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }

function global:au_GetLatest {
    $download_page = Get-GitHubLatestReleaseLinks -User "HandBrake" -Repository "HandBrake"
    
    $regex = 'x86_64-Win_GUI.zip$'
    $url64 = $download_page.links | ? href -match $regex | select -First 1 -expand href | % { 'https://github.com' + $_ }
	
    $version = $url64 -split '-' | select -Last 1 -Skip 2
    
    @{
        URL64 = $url64
        Version = $version
        ReleaseNotes = "https://github.com/HandBrake/HandBrake/releases/tag/${version}"
    }
}

update -ChecksumFor none
