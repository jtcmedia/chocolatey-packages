import-module au

#$releases = 'https://unity3d.com/get-unity/update'
$major_releases = 'https://unity3d.com/unity/whats-new'
$minor_releases = 'https://unity3d.com/get-unity/download/archive'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"                = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')"           = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $major_releases -UseBasicParsing
    
    $regex = 'UnitySetup64.exe$'
    $editor_url = $download_page.links | ? href -match $regex | select -First 1 -expand href
    
    $regex = 'Android-Support-for-Editor'
    $android_url = $download_page.links | ? href -match $regex | select -First 1 -expand href

    if ($editor_url -eq $null) {
        # it's a minor release
        Write-Host "It's a minor release..."
        $download_page = Invoke-WebRequest -Uri $minor_releases -UseBasicParsing
        $editor_url = $download_page.links | ? href -match $regex | select -First 1 -expand href

        $version = $editor_url -split '-|f' | select -Last 1 -Skip 1
        $release = $editor_url -split 'f' | select -Last 1
    } else {
        $version = $android_url -split '-|f' | select -Last 1 -Skip 1
        $release = $android_url -split 'f' | select -Last 1
    }
    
    
    $url_start = $editor_url -split 'Windows64EditorInstaller' | select -First 1
    
    $unity_data = @{}
    $unity_data["version"] = "$($version)"
    $unity_data["url"] = "$($url_start)"
    $unity_data["release"] = "$($release)"
    
    $unity_data | Export-CliXml $PSScriptRoot\..\_unity.xml

    @{
        URL64   = $editor_url -replace 'http:', 'https:'
        Version = $version
        URL_android = $url_start + "TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-" + $version + "f" + $release
        #Checksum_android = Get-RemoteChecksum -Url $URL_android
        URL_appletv = $url_start + "TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-" + $version + "f" + $release
    }
}

if ($MyInvocation.InvocationName -ne '.') { # run the update only if script is not sourced
  update -ChecksumFor 64
  if ($global:au_old_force -is [bool]) { $global:au_force = $global:au_old_force }
}
