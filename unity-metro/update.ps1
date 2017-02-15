import-module au
import-module "$Env:ChocolateyInstall\extensions\chocolatey-core\*.psm1"

$releases = 'https://unity3d.com/get-unity/update'

function global:au_SearchReplace {
  @{
    ".\tools\params.json" = @{
       '"name":\s*"([^"]*)"' = "`"name`": `"unity-metro`""
       '"title":\s*"([^"]*)"' = "`"title`": `"Windows Store (.NET) Target Support`""
       '"version":\s*"([^"]*)"' = "`"version`": `"$($Latest.Version)`""
       '"checksum":\s*"([^"]*)"' = "`"checksum`": `"$(Get-RemoteChecksum $Latest.urls.metro)`""
       '"uri":\s*"([^"]*)"' = "`"uri`": `"$($Latest.urls.metro)`""
    },
    ".\unity-metro.nuspec" = @{
        '<id>([^<]*)</id>' = "<id>unity-metro</id>"
        '<version>([^<]*)</version>' = "<version>$($Latest.Version)</version>"
        '<title>([^<]*)</title>' = "<title>Windows Store (.NET) Target Support (Install)</title>"
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
        Version = $version
        urls = @{
            metro = $url_metro
            il2cpp = $url_il2cpp
            android = $url_android
            ios = $url_ios
            appletv = $url_appletv
            linux = $url_linux
            mac = $url_mac
            samsungtv = $url_samsungtv
            tizen = $url_tizen
            webgl = $url_webgl
            sa = $url_sa
            ep = $url_ep
            docs = $url_docs
        }
    }
}

update
