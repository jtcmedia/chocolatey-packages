import-module au

$unity_data_unsorted = Import-CliXml $PSScriptRoot\..\_unity.xml
$unity_data = [ordered]@{}
$unity_data_unsorted.Keys | ForEach-Object { [System.Version]$_ } | Sort-Object -Descending | ForEach-Object {
    $unity_data[$_] = $unity_data_unsorted[$_.ToString()]
}

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"          = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum64)'"
        }
        
        ".\unity-mac.nuspec" = @{
            "(\<dependency id=`"unity`" version=)`"([^`"]+)`"" = "`$1`"$($Latest.Version)`""
        }
    }
}


function global:au_GetLatest {
    $streams = [ordered]@{}
    $unity_data.Keys | ForEach-Object {
        $url = $unity_data.$_["url"] + "TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-" + $unity_data.$_["version"] + "f" + $unity_data.$_["release"]
        
        try {
            Invoke-WebRequest -Uri $url -UseBasicParsing -DisableKeepAlive -Method Head -OutFile $null
            $streams[$_] = @{ URL64 = $url -replace 'http:', 'https:'; Version = $unity_data.$_["version"] }
        } catch {
        }
    }
    @{ Streams = $streams }
}

update -ChecksumFor 64
