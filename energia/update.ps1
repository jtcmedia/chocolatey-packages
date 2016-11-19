import-module au

$releases = 'http://energia.nu/download/'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    
    $regex = 'windows.zip$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
    
    $version = $url -split '-' | select -Index 1
    $version = $version -replace 'E', '.'
    
    $Latest = @{ URL32 = $url; Version = $version }
    return $Latest
}

update -ChecksumFor 32
