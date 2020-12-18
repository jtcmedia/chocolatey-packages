import-module au

$releases    = 'https://github.com/smorks/keepassnatmsg/releases/latest'

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
      
        ".\tools\chocolateyInstall.ps1" = @{
            '(^\s*url\s*=\s*)(''.*'')'            = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.zip$'
    $url =  $download_page.links | ? href -match $regex | select -First 1 -expand href | % { 'https://github.com' + $_ }

    $version = $url -split '-' | select -First 1 -Skip 1

    return @{
        URL32        = $url
        Version      = $version.Replace('v','')
        ReleaseNotes = "https://github.com/smorks/keepassnatmsg/releases/tag/${version}"
    }
}

update -ChecksumFor 32
