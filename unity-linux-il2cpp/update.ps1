. $PSScriptRoot\..\unity\update.ps1

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"          = "`$1'$($Latest.URL_linux_il2cpp)'"
            "(^[$]checksum64\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum64)'"
        }
        
        "$($Latest.PackageName).nuspec" = @{
            "(\<dependency id=`"unity`" version=)`"([^`"]+)`"" = "`$1`"`[$($Latest.Version)`]`""
        }
    }
}

function global:au_GetLatest {
    $regex = 'UnitySetup64'
    
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $editor_urls = $download_page.links | ? href -match $regex

    $streams = GetStreams $editor_urls

    $filteredStreams = [ordered]@{}

    $streams.Keys | ForEach-Object {
        if ($streams.$_.URL_linux_il2cpp) {
            $filteredStreams[$_] = $streams.$_
        }
    }

    @{ Streams = $filteredStreams }
}

update -ChecksumFor 64
