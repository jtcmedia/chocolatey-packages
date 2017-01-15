import-module au
import-module "$Env:ChocolateyInstall\extensions\chocolatey-core\*.psm1"

$releases = 'https://unity3d.com/get-unity/download/archive'

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
    $url = $download_page.links | ? href -match $regex | select -First 4 -expand href
    
    $exe_ver = $url[0] -split '-' | select -Last 1
    $version = $exe_ver -split 'f' | select -First 1
    
    $build = $url[0] -split '/' | select -Last 1 -Skip 2
   
    $url_docs = "http://netstorage.unity3d.com/unity/$build/WindowsDocumentationInstaller/UnityDocumentationSetup-$exe_ver" 
    
    return @{ URL32 = $url[1]; URL64 = $url[0]; Version = $version; URLsa = $url[2]; URLep = $url[3]; URLDocs = $url_docs }
}

update
