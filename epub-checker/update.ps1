import-module au

$releases = 'https://pagina.gmbh/startseite/leistungen/publishing-softwareloesungen/epub-checker/'

function global:au_SearchReplace {
    @{
        ".\tools\VERIFICATION.txt" = @{
          "(?i)(\s+x32:).*"                   = "`${1} $($Latest.URL32)"
          "(?i)(Get-RemoteChecksum).*"        = "`${1} $($Latest.URL32)"
          "(?i)(\s+checksum32:).*"            = "`${1} $($Latest.Checksum32)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    
    if ($download_page.Content -cmatch '\(Version\s2(\.\d){2}') {
      $version = $Matches[0].Substring(9)
    } else { return }

    $url = "https://download.pagina.gmbh/epubchecker/files/pagina-EPUB-Checker_Win-$version.zip"

    @{
        Version = $version
        URL32 = $url
    }

}

update -ChecksumFor none
