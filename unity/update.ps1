import-module au

$releases = 'https://unity3d.com/get-unity/download/archive',
  'https://unity3d.com/unity/qa/lts-releases?version=2021.3',
  'https://unity3d.com/unity/qa/lts-releases?version=2020.3',
  'https://unity3d.com/unity/qa/lts-releases?version=2019.4'


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

    $regex = 'UnitySetup64'; $regex2 = 'UnitySetup-Android'

    $streams = [ordered] @{}
    
    $releases | % {
      $download_page = Invoke-WebRequest -Uri $_ -UseBasicParsing
      $editor_url = $download_page.links | ? href -match $regex | select -First 1 -expand href
      if ( $_ -match '2021') {
        $android_url = $download_page.links | ? href -match $regex2 | select -First 1 -expand href
        $version = $android_url -split '-|f' | select -Last 1 -Skip 1
        $release = $android_url -split 'f' | select -Last 1
      } else {
        $version = $editor_url -split '-|f' | select -Last 1 -Skip 1
        $release = $editor_url -split 'f' | select -Last 1
      }
      $streamName = $version -split '.' | select -First 1
      
      if ($streams.$streamName) { return }
      
      $url_start = $editor_url -split 'Windows64EditorInstaller' | select -First 1

      $installers = "Android", "AppleTV", "iOS", "Linux-IL2CPP", "Linux-Mono", "Mac-Mono",
        "Universal-Windows-Platform", "WebGL", "Windows-IL2CPP"
      
      if ( $streamName -eq "2020" -or  $streamName -eq "2019" ) {
        $installers = $installers + "Lumin"
        if ($Latest.PackageName -like "*server*") { return }
      } else {
        $installers = $installers + "Linux-Server", "Mac-Server", "Windows-Server"
        if ($Latest.PackageName -eq "unity-lumin") { return }
      }
      

      $hash = @{}
      $installers | % { $hash.Add("URL_$($_.ToLower().Replace('-','_'))", $url_start + "TargetSupportInstaller/UnitySetup-$_-Support-for-Editor-" + $version + "f" + $release) }

      $streams.$streamName = $hash + @{
        URL64        = $editor_url
        Version      = $version
        ReleaseNotes = "https://unity3d.com/unity/whats-new/${version}"
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
