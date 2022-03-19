import-module au

$releases = 'https://unity3d.com/get-unity/download/archive'

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

    $regex = 'UnitySetup64'
    
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $editor_url = $download_page.links | ? href -match $regex | select -First 1 -expand href

    $version = $editor_url -split '-|f' | select -Last 1 -Skip 1
    $release = $editor_url -split 'f' | select -Last 1

    $url_start = $editor_url -split 'Windows64EditorInstaller' | select -First 1
    
    $installers = "Android", "AppleTV", "iOS", "Linux-IL2CPP", "Linux-Mono", "Linux-Server",
      "Mac-Mono", "Mac-Server", "Universal-Windows-Platform", "WebGL", "Windows-IL2CPP", "Windows-Server"

    $hash = @{}

    $installers | % { $hash.Add("URL_$($_.ToLower().Replace('-','_'))", $url_start + "TargetSupportInstaller/UnitySetup-$_-Support-for-Editor-" + $version + "f" + $release) }

    $hash + @{
      URL64        = $editor_url
      Version      = $version
      ReleaseNotes = "https://unity3d.com/unity/whats-new/${version}"
      URL_docs     = $url_start + "WindowsDocumentationInstaller/UnityDocumentationSetup.exe"
    }

}

if ($MyInvocation.InvocationName -ne '.') { # run the update only if script is not sourced
  update -ChecksumFor 64
  if ($global:au_old_force -is [bool]) { $global:au_force = $global:au_old_force }
}
