import-module au

$releases = 'http://hadoop.apache.org/releases.html'


function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]mirrors\s*=\s*)('.*')"      = "`$1'$($Latest.MIRRORS)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '\.tar\.gz$'
    
    #$get_dl_url = $download_page.links | ? href -match $regex | select -First 2 -Skip 2 -expand href
    $get_dl_url = $download_page.links | ? href -match $regex | select -First 2 -expand href
    
    $version = $get_dl_url[0] -split '/|-' | select -Last 1 -Skip 1
    
    $get_mirror_page = Invoke-WebRequest -Uri $get_dl_url[1] -UseBasicParsing
    
    $url = $get_mirror_page.links | ? href -match $regex | select -First 1 -expand href
       
    return @{ MIRRORS = $get_dl_url[1]; URL32 = $url; Version = $version }
}

update -ChecksumFor 32
