import-module au

$releases = 'https://www.filesplitter.org/'

function global:au_SearchReplace {
    @{
      ".\tools\chocolateyinstall.ps1" = @{
        "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
        "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
      }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href | % { 'https://www.filesplitter.org/' + $_ }
    
    $version = $url -split '-|\.exe' | select -Last 1 -Skip 1
    
    @{
      URL32 = $url
      Version = $version.Replace('v','')
    }
}

update -ChecksumFor 32