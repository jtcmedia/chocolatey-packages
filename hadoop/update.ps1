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
    
    $get_dl_url = $download_page.links | ? href -match $regex | select -First 1 -Skip 5 -expand href
    
    $version = $get_dl_url -split '/|-' | select -Last 1 -Skip 2
    
    $get_mirror_page = Invoke-WebRequest -Uri $get_dl_url -UseBasicParsing
    
    $url = $get_mirror_page.links | ? href -match $regex | select -First 1 -expand href
       
    return @{ MIRRORS = $get_dl_url; URL32 = $url; Version = $version }
}

update -ChecksumFor 32
