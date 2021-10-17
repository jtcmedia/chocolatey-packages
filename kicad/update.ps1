import-module au

$releases = 'https://www.kicad.org/download/windows/'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function Get-ActualUrl([uri]$url) {
  $download_page = Invoke-WebRequest -UseBasicParsing -Uri $url

  $path = $download_page.links | ? href -match 'redir.*\.exe$' | select -first 1 -expand href

  return $url.Scheme + "://" + $url.Host + $path
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = 'x86_64\.exe$'
    $url64 = $download_page.links | ? href -match $regex | select -First 1 -expand href
	
    $version = $url64 -split '-' | select -Last 1 -Skip 1
    
    # $version_length = $version.length
    
    # if ($version_length -eq 5) {
    #   $version = $version + '.00'
    # } elseif ($version_length -eq 7) {
    #   $version = $version.PadRight(8,'0')
    # } else {
    #   Write-Host 'Invalid version number'
    #   return
    # }

    @{
      URL32 = Get-ActualUrl $url64.Replace('x86_64','i686')
      URL64 = Get-ActualUrl $url64
      Version = $version.Replace('_','.')
    }
}

update
