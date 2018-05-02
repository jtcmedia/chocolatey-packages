import-module au

$releases = 'https://store.unity.com/download/thank-you?thank-you=personal&os=win&nid=730'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"                = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')"           = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Ssl3,Tls,Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols
    
    $download_page = Invoke-WebRequest -Uri $releases
    
    $download_dom_object = $download_page.ParsedHtml.getElementsByTagName("script") | Where-Object innerText -match "downloadUrl" | Select -Last 1
    
    $url = $download_dom_object.text -split "'" | Select -Last 1 -Skip 1
    
    $version = $url -split '-|f' | select -Last 1 -Skip 1
    $release = $url -split 'f' | select -Last 1
    $url_start = $url -split 'UnityDownload' | select -First 1
    
    $unity_data = @{}
    $unity_data["version"] = "$($version)"
    $unity_data["url"] = "$($url_start)"
    $unity_data["release"] = "$($release)"
    
    $unity_data | Export-CliXml $PSScriptRoot\..\_unity.xml
    
    return @{ URL64 = $url -replace 'http:', 'https:'; Version = $version }
}

update -ChecksumFor 64
