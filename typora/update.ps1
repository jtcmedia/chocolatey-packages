import-module au

$releases = 'https://typora.io/windows/dev_release.html'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
            "(^[$]checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $regex = '.exe$'
    
    $urls = $download_page.links | ? href -match $regex | select -First 2 -expand href
        
    $version = $download_page.Content -split "<h4>|</h4>" | select -First 1 -Skip 1
	
    @{
        URL = $urls[1]
        URL64 = $urls[0]
        Version = $version
    }
}

update -ChecksumFor all
