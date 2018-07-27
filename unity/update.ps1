import-module au

#$releases = 'https://unity3d.com/get-unity/update'
$major_releases = 'https://unity3d.com/unity/whats-new'
$minor_releases = 'https://unity3d.com/get-unity/download/archive'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"                = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')"           = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $major_releases -UseBasicParsing
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -Skip 2 -expand href
    
    if ($url -eq $null) {
        # it's a minor release
        $download_page = Invoke-WebRequest -Uri $minor_releases -UseBasicParsing
        $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
    } 
    
    $version = $url -split '-|f' | select -Last 1 -Skip 1
    $release = $url -split 'f' | select -Last 1
    $url_start = $url -split 'Windows64EditorInstaller' | select -First 1
    
    $unity_data = @{}
    $unity_data["version"] = "$($version)"
    $unity_data["url"] = "$($url_start)"
    $unity_data["release"] = "$($release)"
    
    $unity_data | Export-CliXml $PSScriptRoot\..\_unity.xml
    
    return @{ URL64 = $url -replace 'http:', 'https:'; Version = $version }
}

update -ChecksumFor 64
