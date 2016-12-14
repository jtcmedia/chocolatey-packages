import-module au

$releases = 'https://torguard.net/downloads.php'
$url = 'http://updates.torguard.biz/Software/Windows/torguard-setup-latest.exe'


function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum)'"
        }
        ".\tools\VERIFICATION.txt" = @{
            "(?i)(\s+checksum32:).*"    = "`${1} $($Latest.Checksum)"
        }
    }
}


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    
    $version = ($download_page.ParsedHtml.getElementsByTagName("span") | ? ClassName -eq "latestver" | select -First 1).InnerText.Substring(1)
    
    return @{ Version = $version; Checksum = Get-RemoteChecksum $url }

}

update -NoCheckUrl -NoCheckChocoVersion -ChecksumFor none
