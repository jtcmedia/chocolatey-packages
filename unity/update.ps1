import-module au

#$releases = 'https://unity3d.com/get-unity/update'
#$releases = 'https://unity3d.com/unity/whats-new/'
$releases = 'https://unity3d.com/get-unity/download/archive'

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
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
    
    $version = $url -split '-|f' | select -Last 1 -Skip 1
    
    return @{ URL64 = $url -replace 'http:', 'https:'; Version = $version }
}

update -ChecksumFor 64
