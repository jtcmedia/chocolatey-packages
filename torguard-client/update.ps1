import-module chocolatey-au
. (Join-Path '..' 'helper-scripts' | Join-Path -ChildPath 'ByPassCloudflare.ps1')

$releases = 'https://torguard.net/downloads.php'
$checksums = 'https://updates.torguard.biz/Software/Windows/checksums.sha256'


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

    $download_page = (ByPassCloudFlare -Url $releases | ConvertFrom-Json).solution.response
    
    #$regex = '^v'
    #$version = ($download_page.ParsedHtml.getElementsByTagName("td") | ? InnerHTML -match $regex | select -First 1).InnerText.Substring(1)
    $version = ($download_page -split "`n" | sls -Pattern '<td>v' | select -First 1) -split '<|>' | select -First 1 -Skip 2 | % { $_.Replace('v','') }
    
    $url = "https://updates.torguard.biz/Software/Windows/torguard-setup-latest.exe"

    $download_checksums = (ByPassCloudFlare -Url $checksums | ConvertFrom-Json).solution.response
    
    $checksum = ($download_checksums -split "`n" | select -Last 1 -Skip 1) -split '\s{2}' | select -First 1

    $regex = 'forums'
    $release_notes = $download_page.links | ? href -match $regex | select -First 1 -expand href
    
    @{
        URL64 = $url
        Version = $version
        ReleaseNotes = $release_notes
        Checksum64 = $checksum
    }

}

update -ChecksumFor none
