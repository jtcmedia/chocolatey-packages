import-module au

$releases = 'https://github.com/Ryochan7/DS4Windows/releases'


function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.zip$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
    
    $version = $url -split '_' | select -Last 1 -Skip 1
    
    $url64 = 'https://github.com' + $url
    
    return @{ URL64 = $url64; Version = $version }
}

update -ChecksumFor 64
