import-module au

$releases = 'https://developer.android.com/studio/index.html'


function global:au_SearchReplace {
    @{
        ".\tools\common.ps1" = @{
            "(^[$]majorVersion\s*=\s*)('.*')"      = "`$1'$($Latest.Version)'"
            "(^[$]buildVersion\s*=\s*)('.*')"      = "`$1'$($Latest.Build)'"
            "(^[$]checksum\s*=\s*)('.*')"          = "`$1'$($Latest.Checksum64)'"
        }
    }
}


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
       
    $version = $url -split '/' | select -Last 1 -Skip 1
    $build = $url -split '-' | select -Last 1 -Skip 1
    
    return @{ URL64 = $url; Version = $version; Build = $build; PackageName = 'AndroidStudio' }
}

update -NoCheckUrl -ChecksumFor 64
