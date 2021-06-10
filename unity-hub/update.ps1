$url64 = "https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.exe"
$exeFile = Join-Path $env:TEMP "UnityHubSetup.exe"

function global:au_SearchReplace {
    @{
        "tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*[$]url64\s*=\s*)(.*)" = "`$1""$($Latest.URL64)"""
            "(?i)(^\s*[$]checksum64\s*=\s*)(.*)" = "`$1""$($Latest.Checksum64)"""
        }
    }
}

function global:au_GetLatest {
    (New-Object Net.WebClient).DownloadFile($url64, $exeFile)
    $version = [System.Diagnostics.FileVersionInfo]::GetVersionInfo($exeFile).FileVersion
    return @{ Version = $version; URL64 = $url64 }
}

update -ChecksumFor 64
