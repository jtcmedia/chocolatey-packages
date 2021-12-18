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
    
    $regex = 'PPP_Windows.*\.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
	
    $version = $url -split '_|.exe$' | select -Last 1 -Skip 1 | % { $_.Replace('v','') }

    @{
        URL = $url
        Version = $version
        DocsUrl = "https://dl4jz3rbrsfum.cloudfront.net/documents/CyberPower_UM_PPP-Windows-v${version}.pdf"
        ReleaseNotes = "https://dl4jz3rbrsfum.cloudfront.net/documents/CyberPower_RN_PPP-Windows-v${version}.pdf"
    }
}

update -ChecksumFor 32
