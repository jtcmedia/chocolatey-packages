import-module au

$releases = 'https://www.bitvise.com/ssh-client-download'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    
	$regex = '.exe$'
	$url = $download_page.links | ? href -match $regex | select -First 1 -expand href
	
	if ($download_page.Content -match 'version\s\d\.\d{2}')
    {
        $version = $Matches[0].Substring(8)
    }
    else { throw "Can't match version 'version\s\d\.\d{2}'" }

    return @{ URL = $url; Version = $version }
}

update -ChecksumFor 32
