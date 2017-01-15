import-module au
import-module "$Env:ChocolateyInstall\extensions\chocolatey-core\*.psm1"

$releases = 'https://unity3d.com/get-unity/update'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url32\s*=\s*)('.*')"         = "`$1'$($Latest.URL32)'"
            "(^[$]url64\s*=\s*)('.*')"         = "`$1'$($Latest.URL64)'"
            "(^[$]checksum32\s*=\s*)('.*')"    = "`$1'$($Latest.Checksum32)'"
            "(^[$]checksum64\s*=\s*)('.*')"    = "`$1'$($Latest.Checksum64)'"
            "(^[$]url_sa\s*=\s*)('.*')"        = "`$1'$($Latest.URLsa)'"
            "(^[$]checksum_sa\s*=\s*)('.*')"   = "`$1'$(Get-RemoteChecksum $Latest.URLsa)'"
            "(^[$]url_ep\s*=\s*)('.*')"        = "`$1'$($Latest.URLep)'"
            "(^[$]checksum_ep\s*=\s*)('.*')"   = "`$1'$(Get-RemoteChecksum $Latest.URLep)'"
            "(^[$]url_docs\s*=\s*)('.*')"      = "`$1'$($Latest.URLDocs)'"
            "(^[$]checksum_docs\s*=\s*)('.*')" = "`$1'$(Get-RemoteChecksum $Latest.URLDocs)'"
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
    
    $url_sa   = "$base_url/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-$exe_ver"
    $url_ep   = "$base_url/WindowsExampleProjectInstaller/UnityExampleProjectSetup-$exe_ver"
    $url_docs = "$base_url/WindowsDocumentationInstaller/UnityDocumentationSetup-$exe_ver" 
    
    return @{ URL32 = $url32; URL64 = $url64; Version = $version; URLsa = $url_sa; URLep = $url_ep; URLDocs = $url_docs }
}

update
