import-module au

$releases = 'https://torguard.net/downloads.php'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    	
	if ($download_page.Content -match 'v0.\d.\d{2}')
    {
        $version = $Matches[0].Substring(1)
    }
    else { throw "Can't match version 'v0.\d.\d{2}'" }

    return @{ Version = $version }
}

update -NoCheckUrl -ChecksumFor 32
