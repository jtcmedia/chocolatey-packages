import-module au

$changelog = 'https://raw.githubusercontent.com/heroku/cli/master/CHANGELOG'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
        ".\tools\VERIFICATION.txt" = @{
            "(?i)(\s+checksum32:).*"    = "`${1} $($Latest.Checksum32)"
            "(?i)(\s+checksum64:).*"    = "`${1} $($Latest.Checksum64)"
        }
    }
}

function global:au_GetLatest {
    $toolsPath = "$PSScriptRoot\tools"

    $client = New-Object System.Net.WebClient
        $fn = $changelog -split '/' | select -Last 1
        $client.DownloadFile($changelog, "$toolsPath\$fn")
        $version = Get-Content "$toolsPath\$fn" | select -First 1 | % { $_ -split '\s+' | select -First 1 }
    $client.Dispose()
    
    #don't need changelog file anymore
    rm "$toolsPath\$fn"
    
    return @{Version = $version }
}

update -NoCheckUrl -NoCheckChocoVersion
