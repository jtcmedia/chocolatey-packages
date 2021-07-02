import-module au

$releases = 'https://github.com/AaronFeng753/Waifu2x-Extension-GUI/releases/latest'

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
      
        # ".\tools\chocolateyinstall.ps1" = @{
        #   "(^[$]megaURL\s*=\s*)('.*')"      = "`$1'$($Latest.MegaURL)'"
        #   "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        # }

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

    $version = $url -split '/' | select -Last 1 -Skip 1


    
    # Mega D/L
    # $regex = '^https://mega.nz'
    # $mega_url = $download_page.links | ? href -match $regex | select -First 1 -expand href

    # $fileName = ($download_page.Content -split "`n" | sls -Pattern 'data-snippet-clipboard-copy-content="' | select -First 1) -split '"' | select -Last 1

    # $version = $fileName -split '-' | select -Last 1 -Skip 1

    # $checksum = ($download_page.Content -split "`n" | sls -Pattern '^SHA256: ' | select -First 1) -split ' ' | select -Last 1

        
    @{
        #MegaURL = $mega_url
        #Checksum64 = $checksum
        URL64 = $url
        Version = $version.Replace('v','')
        ReleaseNotes = "https://github.com/AaronFeng753/Waifu2x-Extension-GUI/releases/tag/${version}"
    }
}

#update -ChecksumFor none
update -ChecksumFor 64
