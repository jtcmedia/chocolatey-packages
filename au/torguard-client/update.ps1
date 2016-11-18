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
    
	$url = ($download_page.InputFields | select -First 1).outerHTML -match "'.*'"
	
	$version = ($download_page.ParsedHtml.getElementsByTagName("span") | ? ClassName -eq "latestver" | select -First 1).InnerText.Substring(1)
    
    return @{ URL32 = $url; Version = $version }

}

update -ChecksumFor 32
