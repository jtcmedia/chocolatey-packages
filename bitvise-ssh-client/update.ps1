import-module au

$releases = 'https://www.bitvise.com/ssh-client-download'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    

    $regex = '.exe$'
    $urls = $download_page.links | ? href -match $regex | select -First 3 -expand href
    
    if ($download_page.Content -match 'version:\s8\.\d{2}') {
      $version8 = $Matches[0].Substring(9)
    } else { return }

    $version9 = $urls[2] -split '-|\.exe' | select -Last 1 -Skip 1


    @{
        Streams = [ordered] @{
          '8' = @{ Version = $version8; URL32 = $urls[0] }
          '9' = @{ Version = $version9.Insert(1, '.'); URL32 = $urls[2] }
        }
    }
}

update -ChecksumFor 32
