import-module au

$releases = 'https://eternallybored.org/misc/wget/'

function global:au_SearchReplace {
    @{
        ".\tools\VERIFICATION.txt" = @{
            "(?i)(\s+x32:).*"           = "`${1} $($Latest.URL32)"
            "(?i)(\s+x64:).*"           = "`${1} $($Latest.URL64)"
            "(?i)(\s+checksum32:).*"    = "`${1} $($Latest.Checksum32)"
            "(?i)(\s+checksum64:).*"    = "`${1} $($Latest.Checksum64)"
        }
    }
}


function global:au_BeforeUpdate {
    $toolsPath = "$PSScriptRoot\tools"

    rm "$toolsPath\*.zip" -force -ea stop
    $client = New-Object System.Net.WebClient
        $fn = $Latest.URL32 -split '/' | select -Last 1
        Write-Host 'Downloading x32 installer: ' $fn
        $client.DownloadFile($Latest.URL32, "$toolsPath\$fn")
        $Latest.Checksum32 = Get-FileHash -Algorithm SHA256 -Path "$toolsPath\$fn" | % Hash

        $fn = $Latest.URL64 -split '/' | select -Last 1
        Write-Host 'Downloading x64 installer: ' $fn
        $client.DownloadFile($Latest.URL64, "$toolsPath\$fn")
        $Latest.Checksum64 = Get-FileHash -Algorithm SHA256 -Path "$toolsPath\$fn" | % Hash
    $client.Dispose()
}


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    
    $regex = '.zip$'
    $url = $download_page.links | ? href -match $regex | select -First 2 -expand href
    
    $version = $url[0] -split '-' | select -Last 1 -Skip 1
    
    $url32 = 'https://eternallybored.org/misc/wget/' + $url[0]
    $url64 = 'https://eternallybored.org/misc/wget/' + $url[1]
    
    $Latest = @{ URL32 = $url32; URL64 = $url64; Version = $version }
    return $Latest
}

update -ChecksumFor none
