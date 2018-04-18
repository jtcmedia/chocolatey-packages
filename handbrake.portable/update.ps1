import-module au

$releases = 'https://handbrake.fr/downloads2.php'

function global:au_SearchReplace {
    @{
        ".\tools\VERIFICATION.txt" = @{
            "(?i)(\s+x64:).*"            = "`${1} $($Latest.URL64)"
            "(?i)(\s+checksum64:).*"     = "`${1} $($Latest.Checksum64)"
            "(?i)(Get-RemoteChecksum).*" = "`${1} $($Latest.URL64)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Ssl3,Tls,Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols
    
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.zip$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
	
    $version = $url -split '-' | select -Last 1 -Skip 2
    
    $url_get_request = 'https://handbrake.fr/' + $url
    
    $downloading_page = Invoke-WebRequest $url_get_request
    
    $url64 = $downloading_page.links | ? href -match $regex | select -First 1 -expand href
    	
    return @{ URL64 = $url64; Version = $version }
}

update -ChecksumFor none
