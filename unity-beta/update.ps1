import-module au

$releases = 'https://unity3d.com/unity/beta'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]packageName\s*=\s*)('.*')"          = "`$1'$($Latest.PackageName)'"
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
    
    $release = $url -split '-|\.exe' | select -Last 1 -Skip 1
    $betaVersion = $release -split 'b' | select -First 1
    $betaNumber = $release -split 'b' | select -Last 1
    
    $build = $url -split '/' | select -Last 1 -Skip 1
   
    $base_url = "https://beta.unity3d.com/download/$build"
    
    $url32 = "$base_url/Windows32EditorInstaller/UnitySetup32-$release.exe"
    $url64 = $url32 -replace '32','64'
    
    return @{ URL32 = $url32; URL64 = $url64; Version = "$betaVersion-b$($betaNumber)"; PackageName = 'unity' }
}

update
