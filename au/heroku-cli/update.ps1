import-module au

$releases = 'https://cli.heroku.com'

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
	
	$fn = [System.IO.Path]::GetTempFileName()
	Invoke-WebRequest $url -OutFile $fn -UseBasicParsing
	$version = ((Get-Item $fn).VersionInfo.ProductVersion).Trim()
	Remove-Item -Force $fn
	
    return @{ URL = $url; Version = $version }
}

update -ChecksumFor 32
