import-module au

$releases = 'https://www.lulzbot.com/learn/tutorials/cura-lulzbot-edition-installation-windows'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
	
    $version = $url -split '-' | select -Last 2 -Skip 1
	
    if($version[0] -match '^lulzbot$') {
      $version = $version[1]
    } elseif ($version[1] -match '^win10$') {
        $version = $version[0]
    } else {
      $version = $version[0] + '.' + $version[1]
    }

    @{
        URL = $url
        Version = $version
    }
}

update -ChecksumFor 32
