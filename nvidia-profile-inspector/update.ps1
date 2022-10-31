import-module au
. (Join-Path '..' 'helper-scripts' 'Get-GitHubLatestReleaseLinks.ps1')

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

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }

function global:au_GetLatest {
    $download_page = Get-GitHubLatestReleaseLinks -User "Orbmu2k" -Repository "nvidiaProfileInspector"
    
    $regex = '.zip$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href | % { 'https://github.com' + $_ }

    $version  = $url -split '/' | select -Last 1 -Skip 1
    
    @{
        Version = $version
        URL32 = $url
        ReleaseNotes = "https://github.com/Orbmu2k/nvidiaProfileInspector/releases/tag/${version}"
    }
}

update -ChecksumFor none
