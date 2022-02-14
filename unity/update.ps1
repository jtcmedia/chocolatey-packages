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

function GetStreams() {
    param($editorUrls)
    $streams = [ordered]@{}

    $editorUrls | ForEach-Object {
        $editor_url = $_.href

        $version = $editor_url -split '-|f' | select -Last 1 -Skip 1
        $release = $editor_url -split 'f' | select -Last 1

        $url_start = $editor_url -split 'Windows64EditorInstaller' | select -First 1

        $streamVersion = $version -replace '(\d+\.\d+).*', '$1'

        if ($streams.$streamVersion) { return }

        $streams.$streamVersion = @{
            URL64            = $editor_url
            Version          = $version
            ReleaseNotes     = "https://unity3d.com/unity/whats-new/${version}"
        }

        $extras = @{
            URL_android      = $url_start + "TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-" + $version + "f" + $release
            URL_appletv      = $url_start + "TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-" + $version + "f" + $release
            URL_docs         = $url_start + "WindowsDocumentationInstaller/UnityDocumentationSetup.exe"
            URL_ios          = $url_start + "TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-" + $version + "f" + $release
            URL_metro        = $url_start + "TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-" + $version + "f" + $release
            URL_linux_il2cpp = $url_start + "TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-" + $version + "f" + $release
        }

        $validExtras = @{}
        $extras.Keys | ForEach-Object {
            $key = $_
            try {
                Invoke-WebRequest -Uri $extras.$key -UseBasicParsing -DisableKeepAlive -Method Head | Out-Null
                $validExtras[$key] = $extras.$key
            } catch {
            }
        }

        $streams.$streamVersion += $validExtras
    }

    Write-Host $streams.Count "streams collected"
    $streams
}

function GetUnityData() {
    param($editorUrls)

    $unity_data = [ordered]@{}
    $editorUrls | ForEach-Object {
        $editor_url = $_.href

        $version = $editor_url -split '-|f' | select -Last 1 -Skip 1
        $release = $editor_url -split 'f' | select -Last 1

        $url_start = $editor_url -split 'Windows64EditorInstaller' | select -First 1

        $streamVersion = $version -replace '(\d+\.\d+).*', '$1'

        if ($unity_data.$streamVersion) { return }

        $unity_data.$streamVersion = @{}
        $unity_data.$streamVersion["version"] = "$($version)"
        $unity_data.$streamVersion["url"] = "$($url_start)"
        $unity_data.$streamVersion["release"] = "$($release)"
    }

    $unity_data
}

function global:au_GetLatest {
    $regex = 'UnitySetup64'
    
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $editor_urls = $download_page.links | ? href -match $regex

    $streams = GetStreams $editor_urls
    
    $unity_data = GetUnityData $editor_urls
    
    try {
        $unity_data | Export-CliXml $PSScriptRoot\..\_unity.xml
    } catch {
        Write-Warning "Unable to write to $PSScriptRoot\..\_unity.xml - another package update script may be updating it already."
    }

    @{ Streams = $streams }
}

if ($MyInvocation.InvocationName -ne '.') { # run the update only if script is not sourced
  update -ChecksumFor 64
  if ($global:au_old_force -is [bool]) { $global:au_force = $global:au_old_force }
}
