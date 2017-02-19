import-module au
#import-module "$Env:ChocolateyInstall\extensions\chocolatey-core\*.psm1"

$releases = 'https://unity3d.com/get-unity/update'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url32\s*=\s*)('.*')"                = "`$1'$($Latest.URL32)'"
            "(^[$]url64\s*=\s*)('.*')"                = "`$1'$($Latest.URL64)'"
            "(^[$]checksum32\s*=\s*)('.*')"           = "`$1'$($Latest.Checksum32)'"
            "(^[$]checksum64\s*=\s*)('.*')"           = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
    
    $exe_ver = $url -split '-' | select -Last 1
    $version = $exe_ver -split 'f' | select -First 1
    $build = $url -split '/' | select -Last 1 -Skip 2
   
    $base_url = "http://download.unity3d.com/download_unity/$build"
    
    $url32 = "$base_url/Windows32EditorInstaller/UnitySetup32-$exe_ver"
    $url64 = $url32 -replace '32','64'
    
    $url_metro     = "$base_url/TargetSupportInstaller/UnitySetup-Metro-Support-for-Editor-$exe_ver"
    $url_il2cpp    = "$base_url/TargetSupportInstaller/UnitySetup-UWP-IL2CPP-Support-for-Editor-$exe_ver"
    $url_android   = "$base_url/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-$exe_ver"
    $url_ios       = "$base_url/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-$exe_ver"
    $url_appletv   = "$base_url/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-$exe_ver"
    $url_linux     = "$base_url/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-$exe_ver"
    $url_mac       = "$base_url/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-$exe_ver"
    $url_samsungtv = "$base_url/TargetSupportInstaller/UnitySetup-Samsung-TV-Support-for-Editor-$exe_ver"
    $url_tizen     = "$base_url/TargetSupportInstaller/UnitySetup-Tizen-Support-for-Editor-$exe_ver"
    $url_webgl     = "$base_url/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-$exe_ver"
    $url_sa        = "$base_url/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-$exe_ver"
    $url_ep        = "$base_url/WindowsExampleProjectInstaller/UnityExampleProjectSetup-$exe_ver"
    $url_docs      = "$base_url/WindowsDocumentationInstaller/UnityDocumentationSetup-$exe_ver" 
    
    return @{
        URL32 = $url32
        URL64 = $url64
        Version = $version
        URLmetro = $url_metro
        ChecksumMetro = Get-RemoteChecksum $url_metro
        URLil2cpp = $url_il2cpp
        ChecksumIl2cpp = Get-RemoteChecksum $url_il2cpp
        URLandroid = $url_android
        ChecksumAndroid = Get-RemoteChecksum $url_android
        URLios = $url_ios
        ChecksumIos = Get-RemoteChecksum $url_ios
        URLappletv = $url_appletv
        ChecksumAppletv = Get-RemoteChecksum $url_appletv
        URLlinux = $url_linux
        ChecksumLinux = Get-RemoteChecksum $url_linux
        URLmac = $url_mac
        ChecksumMac = Get-RemoteChecksum $url_mac
        URLsamsungtv = $url_samsungtv
        ChecksumSamsungtv = Get-RemoteChecksum $url_samsungtv
        URLtizen = $url_tizen
        ChecksumTizen = Get-RemoteChecksum $url_tizen
        URLwebgl = $url_webgl
        ChecksumWebgl = Get-RemoteChecksum $url_webgl
        URLsa = $url_sa
        ChecksumSa = Get-RemoteChecksum $url_sa
        URLep = $url_ep
        ChecksumEp = Get-RemoteChecksum $url_ep
        URLdocs = $url_docs
        ChecksumDocs = Get-RemoteChecksum $url_docs
    }
}

if ($MyInvocation.InvocationName -ne '.') { # run the update only if script is not sourced
    update
}
