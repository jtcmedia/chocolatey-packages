import-module au

$releases = 'https://www.cyberpowersystems.com/products/software/'

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<docsUrl\>).*?(\</docsUrl\>)" = "`${1}$($Latest.DocsUrl)`$2"
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
            
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = 'ppp_windows.*\.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
	
    $_version = $url -split 'windows_|.exe' | select -Last 1 -Skip 1

    $version = $_version.Replace('_','.')
	
    @{
        URL = $url
        Version = $version
        DocsUrl = "https://dl4jz3rbrsfum.cloudfront.net/documents/CyberPower_UM_PPP-Windows-v2.2.0.pdf"
        ReleaseNotes = "https://dl4jz3rbrsfum.cloudfront.net/documents/PowerPanel%20Personal%20Windows%20-%20RN%20-%20${version}.pdf"
    }
}

update -ChecksumFor 32
