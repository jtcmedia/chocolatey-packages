import-module au

#$unity_data = Import-CliXml $PSScriptRoot\..\_unity.xml

. $PSScriptRoot\..\unity\update.ps1
function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"          = "`$1'$($Latest.URL_appletv)'"
            "(^[$]checksum64\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum64)'"
        }
        
        ".\unity-appletv.nuspec" = @{
            "(\<dependency id=`"unity`" version=)`"([^`"]+)`"" = "`$1`"$($Latest.Version)`""
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
        if ($streams.$_.URL_appletv) {
            $filteredStreams[$_] = $streams.$_
        }
    }

    @{ Streams = $filteredStreams }
}


# function global:au_GetLatest {
  
#     $url = $unity_data["url"] + "TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-" + $unity_data["version"] + "f" + $unity_data["release"]
    
    
#     return @{ URL64 = $url -replace 'http:', 'https:'; Version = $unity_data["version"] }
# }

update -ChecksumFor 64
