import-module au

$releases = 'https://raw.githubusercontent.com/zaproxy/zap-admin/master/ZapVersions.xml'

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }

        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
  $download_xml = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
	$xml = [xml] ($download_xml)

  $version = $xml.ZAP.core.version
  
	
	@{
      URL32 = $xml.ZAP.core.windows32.url
      URL64 = $xml.ZAP.core.windows.url
      Version = $version
      ReleaseNotes = "https://www.zaproxy.org/docs/desktop/releases/${version}"
  }

}

update
