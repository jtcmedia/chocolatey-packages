import-module au

$releases = 'https://torguard.net/downloads.php'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    
    $get_url = ($download_page.InputFields | select -First 1).outerHTML -match "'.*'"
    
    $url = $Matches[0].Trim("'")
        
    $version = ($download_page.ParsedHtml.getElementsByTagName("span") | ? ClassName -eq "latestver" | select -First 1).InnerText.Substring(1)
    
    return @{ URL32 = $url; Version = $version }

}

try {
    update -ChecksumFor 32
} catch {
    $ignore = 'Unable to connect to the remote server'
    if ($_ -match $ignore) { Write-Host $ignore; 'ignore' } else { throw $_ }
}
