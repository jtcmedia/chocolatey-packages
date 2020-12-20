import-module au

$releases = 'https://github.com/cypress-io/cypress/releases/latest'

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
      
        ".\tools\chocolateyinstall.ps1" = @{
          "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
          "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
          "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
          "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.zip$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href | % { 'https://github.com' + $_ }

    $version = $url -split '/|.zip$' | select -Last 1 -Skip 1 | % { $_.Replace('v','') }
    
    @{
        URL32 = "https://cdn.cypress.io/desktop/${version}/win32-ia32/cypress.zip"
        URL64 = "https://cdn.cypress.io/desktop/${version}/win32-x64/cypress.zip"
        Version = $version
        ReleaseNotes = "https://github.com/cypress-io/cypress/releases/tag/v${version}"
    }
}

update -ChecksumFor all
