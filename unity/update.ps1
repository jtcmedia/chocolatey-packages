import-module chocolatey-au

$major_releases = '6000', '2023', '2022', '2021'
$api_url = 'https://services.api.unity.com/unity/editor/release/v1/releases'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"                = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')"           = "`$1'$($Latest.Checksum64)'"
        }

        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
    }
}

function global:au_GetLatest {

    $streams = [ordered] @{}

    $major_releases | % { 
      
      $apiRequestResult = Invoke-RestMethod "${api_url}?version=$_"

      $release = $apiRequestResult.results | Select-Object -First 1

      $editor_url = $release.downloads[0].url
      $versionArray = $release.version -split '(f|a)'
      $version = $versionArray[0]
      $streamName = $_

      if ($streams.$streamName) { return }
      
      $revision = $versionArray[1] + $versionArray[2]
      $url_start = $editor_url -split 'Windows64EditorInstaller' | select -First 1

      $installers = "Android", "iOS", "AppleTV", "Linux-IL2CPP", "Linux-Mono", "Linux-Server",
        "Mac-Mono", "Mac-Server", "Universal-Windows-Platform", "WebGL", "Windows-IL2CPP", "Windows-Server"

      $hash = @{}
      $installers | % { $hash.Add("URL_$($_.ToLower().Replace('-','_'))", $url_start + "TargetSupportInstaller/UnitySetup-$_-Support-for-Editor-" + $version + $revision + ".exe") }
      
      $streams.$streamName = $hash + @{
        URL64        = $editor_url
        Version      = $version
        ReleaseNotes = "https://unity.com/releases/editor/whats-new/${version}#notes"
        URL_docs     = $url_start + "WindowsDocumentationInstaller/UnityDocumentationSetup.exe"
      }
    }

    Write-Host $streams.Count 'streams collected'

    @{
        Streams = $streams
    }

}

if ($MyInvocation.InvocationName -ne '.') { # run the update only if script is not sourced
  update -ChecksumFor 64
  if ($global:au_old_force -is [bool]) { $global:au_force = $global:au_old_force }
}
