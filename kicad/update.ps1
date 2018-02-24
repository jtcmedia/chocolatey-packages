import-module au

$releases = 'http://kicad-pcb.org/download/windows/'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $urls = $download_page.links | ? href -match $regex | select -First 2 -expand href
	
    $version = $urls[0] -split '-' | select -Last 1 -Skip 1
	
    return @{ URL = $urls[1]; URL64 = $urls[0]; Version = $version }
}

update
