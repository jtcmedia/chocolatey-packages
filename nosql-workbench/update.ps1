import-module chocolatey-au

$versions = 'https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkbenchDocumentHistory.html'

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

    $version_page = Invoke-WebRequest -Uri $versions -UseBasicParsing
    
    $version = ($version_page -split "`n" | sls -Pattern '^\s*<td' | select -First 1) -split '<|>' | select -First 1 -Skip 2

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
	

    @{
        URL64 = $url
        Version = $version
    }
}

update -ChecksumFor 64
