import-module au

$releases = 'https://torguard.net/downloads.php'
$checksums = 'http://updates.torguard.biz/Software/Windows/checksums.sha256'


function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
        ".\tools\VERIFICATION.txt" = @{
            "(?i)(\s+checksum32:).*"    = "`${1} $($Latest.Checksum32)"
        }
    }
}


function global:au_BeforeUpdate {
      
    $toolsPath = "$PSScriptRoot\tools"

    $client = New-Object System.Net.WebClient
        $fn = $checksums -split '/' | select -Last 1
        Write-Host 'Getting checksum...'
        $client.DownloadFile($checksums, "$toolsPath\$fn")
        $Latest.Checksum32 = Get-Content "$toolsPath\$fn" | select -Last 1 | % { $_ -split '  ' | select -First 1 }
    $client.Dispose()
    
    #don't need checksums file anymore
    rm "$toolsPath\$fn"
}


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    
    $version = ($download_page.ParsedHtml.getElementsByTagName("span") | ? ClassName -eq "latestver" | select -First 1).InnerText.Substring(1)
    
    return @{ Version = $version }

}

update -NoCheckUrl -NoCheckChocoVersion -ChecksumFor none
