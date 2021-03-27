import-module au

$releases = 'https://github.com/staxrip/staxrip/releases/latest'

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
    
    $regex = '.7z$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href | % { 'https://github.com' + $_ }

    $version = $url -split '/' | select -Last 1 -Skip 1 | % { $_.Replace('v','') }
    
    @{
        URL64 = $url
        Version = $version
        ReleaseNotes = "https://github.com/staxrip/staxrip/releases/tag/v${version}"
    }
}

update -ChecksumFor 64
