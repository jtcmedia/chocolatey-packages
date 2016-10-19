import-module au

$releases = 'https://fs-uae.net/download#windows'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    
	$regex = '.exe$'
	$url = $download_page.links | ? href -match $regex | select -First 2 -expand href
	
	$version = $url[0] -split '_' | select -Index 1
	
	$url32 = 'https://fs-uae.net' + $url[0]
    $url64 = 'https://fs-uae.net' + $url[1]
	
	$Latest = @{ URL32 = $url32; URL64 = $url64; Version = $version }
    return $Latest
}

update
