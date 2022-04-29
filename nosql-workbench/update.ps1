import-module au

$releases = 'https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.settingup.html'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
  
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
	
    $version = $url -split '-|.exe' | select -Last 1 -Skip 1
	
    @{
        URL64 = $url.Replace(' ','%20')
        Version = $version
    }
}

update -ChecksumFor 64
