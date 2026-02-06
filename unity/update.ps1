import-module chocolatey-au

$major_releases = '6000', '2023', '2022'
$api_url = 'https://services.api.unity.com/unity/editor/release/v1/releases'
$dl_url_start = 'https://download.unity3d.com/download_unity/'

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

      $dl_url_start_w_rev = $dl_url_start + $release.shortRevision

      $editor_url = $dl_url_start_w_rev + '/Windows64EditorInstaller/UnitySetup64-' + $release.version + '.exe'

      $versionArray = $release.version -split '(f|a|b)'
      $version = $versionArray[0]
      $streamName = $_

      if ($streams.$streamName) { return }
      
      $revision = $versionArray[1] + $versionArray[2]

      $installers = "Android", "iOS", "AppleTV", "Linux-IL2CPP", "Linux-Mono", "Linux-Server",
        "Mac-Mono", "Mac-Server", "Universal-Windows-Platform", "WebGL", "Windows-IL2CPP", "Windows-Server"

      $hash = @{}
      $installers | % { $hash.Add("URL_$($_.ToLower().Replace('-','_'))", $dl_url_start_w_rev + "/TargetSupportInstaller/UnitySetup-$_-Support-for-Editor-" + $version + $revision + ".exe") }

      $preRelease = ''
      # Is this an alpha or beta?
      if ($versionArray[1] -eq 'a') { $preRelease = "-alpha" + $versionArray[2]}
      if ($versionArray[1] -eq 'b') { $preRelease = "-beta" + $versionArray[2]}

      if ($versionArray[1] -eq 'f') {
        $ReleaseNotes = "https://unity.com/releases/editor/whats-new/${version}#notes"
      } else {
        $ReleaseNotes = "https://unity.com/releases/editor/whats-new/${release.version}#notes"
      }
      

      
      $streams.$streamName = $hash + @{
        URL64        = $editor_url
        Version      = $version + $preRelease
        ReleaseNotes = $ReleaseNotes
        URL_docs     = $dl_url_start_w_rev + "/WindowsDocumentationInstaller/UnityDocumentationSetup.exe"
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
