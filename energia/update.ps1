import-module au

$releases = 'https://energia.nu/download/'

function global:au_SearchReplace {
    @{
      ".\tools\chocolateyinstall.ps1" = @{
          "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
          "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
          "(^[$]folderName\s*=\s*)('.*')" = "`$1'$($Latest.Folder)'"
      }
    }
}


function global:au_GetLatest {
  
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = 'windows.zip$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
    
    $versionE = $url -split '-' | select -Index 1
    $folder  = 'energia-' + $versionE
    $version = $versionE -replace 'E', '.'
    $version = $version + '00'
    
    return @{ URL = $url; Version = $version; Folder = $folder }
}

update -ChecksumFor 32
