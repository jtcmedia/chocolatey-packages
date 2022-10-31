import-module au
. (Join-Path '..' 'helper-scripts' 'Get-GitHubLatestReleaseLinks.ps1')

$releases = 'https://github.com/HandBrake/HandBrake/releases/latest'

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
    
    $regex = 'x86_64-Win_GUI.exe$'
    $url64 = $download_page.links | ? href -match $regex | select -First 1 -expand href | % { 'https://github.com' + $_ }
	
    $version = $url64 -split '-' | select -First 1 -Skip 1
    
    @{
        URL64 = $url64
        Version = $version
        ReleaseNotes = "https://github.com/HandBrake/HandBrake/releases/tag/${version}"
    }
}

if ($MyInvocation.InvocationName -ne '.') { # run the update only if script is not sourced
  update -ChecksumFor none
}
