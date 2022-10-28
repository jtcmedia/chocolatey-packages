import-module au

$releases = 'https://www.bitvise.com/ssh-client-download'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }

        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    

    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
    
    if ($download_page.Content -match 'version:\s9\.\d{2}') {
      $version = $Matches[0].Substring(9)
      $releaseNotes = 'https://www.bitvise.com/ssh-client-version-history'
    } else { return }

    @{ Version = $version; URL32 = $url; ReleaseNotes = $releaseNotes }

}

update -ChecksumFor 32
