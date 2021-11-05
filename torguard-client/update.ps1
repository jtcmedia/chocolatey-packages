import-module au

$releases = 'https://torguard.net/downloads.php'


function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
      
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    #$regex = '^v'
    #$version = ($download_page.ParsedHtml.getElementsByTagName("td") | ? InnerHTML -match $regex | select -First 1).InnerText.Substring(1)
    $version = ($download_page.Content -split "`n" | sls -Pattern '^<td>v' | select -First 1) -split '<|>' | select -First 1 -Skip 2 | % { $_.Replace('v','') }
    
    $url = "https://torguard.net/downloads/new/torguard-setup-latest.exe"

    $regex = 'forums'
    $release_notes = $download_page.links | ? href -match $regex | select -First 1 -expand href
    
    @{
        URL64 = $url
        Version = $version
        ReleaseNotes = $release_notes
    }

}

update -ChecksumFor 64
