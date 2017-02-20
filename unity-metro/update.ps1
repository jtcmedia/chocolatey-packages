import-module au

$releases = 'https://unity3d.com/get-unity/update'


function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url\s*=\s*)('.*')"          = "`$1'$($Latest.URL32)'"
            "(^[$]checksum\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum32)'"
        }
        
        ".\unity-metro.nuspec" = @{
            "(\<dependency id=`"unity`" version=)`"([^`"]+)`"" = "`$1`"$($Latest.Version)`""
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
    
    $url_metro = "$base_url/TargetSupportInstaller/UnitySetup-Metro-Support-for-Editor-$exe_ver"
    
    return @{ URL32 = $url_metro; Version = $version }
}

update -ChecksumFor 32
