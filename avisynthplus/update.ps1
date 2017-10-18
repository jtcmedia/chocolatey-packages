import-module au

$releases = 'https://github.com/AviSynth/AviSynthPlus/releases'


function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url_end = $download_page.links | ? href -match $regex | select -First 1 -expand href
       
    $release = ($url_end -split '-|\.' | select -Last 1 -Skip 1).TrimStart('r')
    $version = "0.1.0.$release"
    
    $url = 'https://github.com' + $url_end
    
    return @{ URL32 = $url; Version = $version }
}

update -ChecksumFor 32
