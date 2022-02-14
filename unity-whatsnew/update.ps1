import-module au

$releases = 'https://unity3d.com/unity/whats-new'


function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"                = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')"           = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = 'UnitySetup64'
    $editor_url = $download_page.links | ? href -match $regex | select -First 1 -expand href

    $regex = 'Android-Support-for-Editor'
    $android_url = $download_page.links | ? href -match $regex | select -First 1 -expand href

    $version = $android_url -split '-|f' | select -Last 1 -Skip 1
    $release = $android_url -split 'f' | select -Last 1
    
        
    $url_start = $editor_url -split 'Windows64EditorInstaller' | select -First 1
    
    $unity_data = @{}
    $unity_data["version"] = "$($version)"
    $unity_data["url"] = "$($url_start)"
    $unity_data["release"] = "$($release)"
    
    #$unity_data | Export-CliXml $PSScriptRoot\..\_unity.xml

    @{
        URL64       = $editor_url
        Version     = $version
        PackageName = 'unity'
        URL_android = $android_url
        ID_android  = 'unity-android'
        URL_appletv = $url_start + "TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-" + $version + "f" + $release
        ID_appletv  = 'unity-appletv'
        URL_docs    = $url_start + "WindowsDocumentationInstaller/UnityDocumentationSetup.exe"
        ID_docs     = 'unity-docs'
        #URL_facebook = $url_start + "TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-" + $version + "f" + $release
    }
}

if ($MyInvocation.InvocationName -ne '.') { # run the update only if script is not sourced
  update -ChecksumFor 64
  if ($global:au_old_force -is [bool]) { $global:au_force = $global:au_old_force }
}
