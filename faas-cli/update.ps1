import-module au

$releases = 'https://github.com/openfaas/faas-cli/releases'


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
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
    
    $version = $url -split '/' | select -Last 1 -Skip 1
    
    $url32 = 'https://github.com' + $url
    
    return @{ URL32 = $url32; Version = $version }
}

update -ChecksumFor 32
