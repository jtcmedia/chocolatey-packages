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
    
    $regex = '^v'
    
    $version = ($download_page.ParsedHtml.getElementsByTagName("td") | ? InnerHTML -match $regex | select -First 1).InnerText.Substring(1)
    
    $url = "https://updates.torguard.biz/Software/Windows/torguard-setup-latest.exe"
    
    return @{ URL32 = $url; Version = $version }

}

update -ChecksumFor 32
