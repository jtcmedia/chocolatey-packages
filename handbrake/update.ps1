import-module au

$releases = 'https://handbrake.fr/downloads.php'

function global:au_SearchReplace {
    @{
        ".\handbrake.nuspec" = @{
            "(\<dependency id=`"handbrake.install`" version=)`"([^`"]+)`"" = "`$1`"[$($Latest.Version)]`""
        }
    }
}


function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Ssl3,Tls,Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols
    
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
	
    $version = $url -split '-' | select -Last 1 -Skip 2
    
    return @{ Version = $version }
}

update -ChecksumFor none
