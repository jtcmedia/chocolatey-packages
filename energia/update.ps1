import-module au

$releases = 'https://energia.nu/download/'

function global:au_SearchReplace {
    @{
      ".\tools\chocolateyinstall.ps1" = @{
          "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
          "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
      }
    }
}


function global:au_GetLatest {
  
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = 'windows.zip$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
    
    $version = $url -split '-' | select -Index 1
    $version = $version -replace 'E', '.'
    
    return @{ URL = $url; Version = $version }
}

update -ChecksumFor 32
