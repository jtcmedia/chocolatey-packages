import-module au

$unity_data = Import-CliXml $PSScriptRoot\..\_unity.xml

$major_version = $unity_data["version"] -split '.' | select -First 2

$releases = "https://unity3d.com/unity/qa/patch-releases?version=$($major_version)"

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"                = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')"           = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -Skip 1 -expand href
    
    $version = (($url -split '-|.exe' | select -Last 1 -Skip 1) -replace 'p', '.') + '-patch'
    
    return @{ URL64 = $url -replace 'http:', 'https:'; Version = $version; PackageName = 'unity' }
}

update -ChecksumFor 64
