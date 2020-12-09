import-module au

$releases = 'https://github.com/AaronFeng753/Waifu2x-Extension-GUI/releases/latest'

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
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href

    $version = $url -split '-' | select -Last 1 -Skip 1
    
    @{
        URL64 = $url
        Version = $version.Replace('v','')
        ReleaseNotes = "https://github.com/AaronFeng753/Waifu2x-Extension-GUI/releases/tag/${version}"
    }
}

update -ChecksumFor 64
