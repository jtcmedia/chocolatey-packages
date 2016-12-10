import-module au

$releases = 'http://gmvault.org/download.html'

function global:au_SearchReplace {
    @{
        ".\tools\VERIFICATION.txt" = @{
            "(?i)(\s+x32:).*"           = "`${1} $($Latest.URL32)"
            "(?i)(\s+checksum32:).*"    = "`${1} $($Latest.Checksum32)"
        }
    }
}


function global:au_BeforeUpdate {
    $toolsPath = "$PSScriptRoot\tools"

    rm "$toolsPath\*.exe" -force -ea stop
    $client = New-Object System.Net.WebClient
        $fn = $Latest.URL32 -split '/' | select -Last 1
        Write-Host 'Downloading installer: ' $fn
        $client.DownloadFile($Latest.URL32, "$toolsPath\$fn")
        $Latest.Checksum32 = Get-FileHash -Algorithm SHA256 -Path "$toolsPath\$fn" | % Hash
    $client.Dispose()
}


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    
    $regex = 'exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
        
    $version = ($url -split '_|.exe' | select -Last 1 -Skip 1).Substring(1)
    
    $Latest = @{ URL32 = $url; Version = $version }
    return $Latest
}

update -ChecksumFor none
