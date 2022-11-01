import-module au
. (Join-Path '..' 'helper-scripts' | Join-Path -ChildPath 'Get-GitHubLatestReleaseLinks.ps1')

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
      
        ".\legal\VERIFICATION.txt" = @{
          "(?i)(\s+x32:).*"                   = "`${1} $($Latest.URL32)"
          "(?i)(\s+x64:).*"                   = "`${1} $($Latest.URL64)"
          "(?i)(\s+SHASUMS:).*"               = "`${1} $($Latest.SHASUMS)"
          "(?i)(Get-RemoteChecksum).*"        = "`${1} $($Latest.URL64)"
          "(?i)(\s+checksum32:).*"            = "`${1} $($Latest.Checksum32)"
          "(?i)(\s+checksum64:).*"            = "`${1} $($Latest.Checksum64)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }

function global:au_GetLatest {
    $download_page = Get-GitHubLatestReleaseLinks -User "arduino" -Repository "arduino-cli"
    
    $regex = '.(txt|zip)$'
    $url = $download_page.links | ? href -match $regex | select -First 3 -expand href | % { 'https://github.com' + $_ }

    $version = $url[2] -split '_' | select -First 1 -Skip 1
    
    @{
        URL32 = $url[1]
        URL64 = $url[2]
        Version = $version.Replace('v','')
        SHASUMS = $url[0]
        ReleaseNotes = "https://github.com/arduino/arduino-cli/releases/tag/${version}"
    }
}

update -ChecksumFor none
