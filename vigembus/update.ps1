import-module au

$releases = 'https://github.com/ViGEm/ViGEmBus/releases/latest'

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
      
        ".\legal\VERIFICATION.txt" = @{
          "(?i)(\s+x32:).*"                   = "`${1} $($Latest.URL32)"
          "(?i)(\s+x64:).*"                   = "`${1} $($Latest.URL64)"
          "(?i)(Get-RemoteChecksum).*"        = "`${1} $($Latest.URL64)"
          "(?i)(\s+checksum32:).*"            = "`${1} $($Latest.Checksum32)"
          "(?i)(\s+checksum64:).*"            = "`${1} $($Latest.Checksum64)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '\.msi$'
    $urls = $download_page.links | ? href -match $regex | select -First 2 -expand href | % { 'https://github.com' + $_ }

    $version = $urls[0] -split '/|setup-' | select -Last 1 -Skip 1
    
    @{
        URL32 = $urls[1]
        URL64 = $urls[0]
        Version = $version.Replace('v','')
        ReleaseNotes = "https://github.com/ViGEm/ViGEmBus/releases/tag/setup-${version}"
    }
}

update -ChecksumFor none
