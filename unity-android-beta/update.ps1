import-module au

$releases = 'https://unity3d.com/unity/beta'


function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]packageName\s*=\s*)('.*')"  = "`$1'$($Latest.PackageName)'"
            "(^[$]url\s*=\s*)('.*')"          = "`$1'$($Latest.URL32)'"
            "(^[$]checksum\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum32)'"
        }
        
        ".\unity-android-beta.nuspec" = @{
            "(\<dependency id=`"unity`" version=)`"([^`"]+)`"" = "`$1`"$($Latest.Version)`""
        }
    }
}


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
    
    $release = $url -split '-|\.exe' | select -Last 1 -Skip 1
    $betaVersion = $release -split 'b' | select -First 1
    $betaNumber = $release -split 'b' | select -Last 1
    
    $build = $url -split '/' | select -Last 1 -Skip 1
   
    $base_url = "https://beta.unity3d.com/download/$build"
    
    $url = "$base_url/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-$release.exe"
    
    return @{ URL32 = $url; Version = "$betaVersion-b$($betaNumber)"; PackageName = 'unity-android' }

}

update -ChecksumFor 32
