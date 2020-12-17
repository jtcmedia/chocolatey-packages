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
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    #$regex = '^v'
    #$version = ($download_page.ParsedHtml.getElementsByTagName("td") | ? InnerHTML -match $regex | select -First 1).InnerText.Substring(1)
    $version = ($download_page.Content -split "`n" | sls -Pattern '^<td>v' | select -First 1) -split '<|>' | select -First 1 -Skip 2 | % { $_.Replace('v','') }
    
    $url = "https://torguard.net/downloads/torguard-setup-latest.exe"
    
    return @{ URL32 = $url; Version = $version }

}

update -ChecksumFor 32
