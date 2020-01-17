import-module au

$releases = 'https://www.zaproxy.org/download/'

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
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
	$regex = '.exe$'
	$url = $download_page.links | ? href -match $regex | select -First 2 -expand href
	
	$version = ($url[0] -split '/' | select -Last 1 -Skip 1).Substring(1)
	
	return @{ URL32 = $url[1]; URL64 = $url[0]; Version = $version }
}

update
