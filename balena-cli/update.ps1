import-module au

$releases = 'https://github.com/balena-io/balena-cli/releases/latest'

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
            
        ".\legal\VERIFICATION.txt" = @{
          "(?i)(\s+x64:).*"                   = "`${1} $($Latest.URL64)"
          "(?i)(Get-RemoteChecksum).*"        = "`${1} $($Latest.URL64)"
          "(?i)(\s+checksum64:).*"            = "`${1} $($Latest.Checksum64)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge }

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url64 = $download_page.links | Where-Object href -match $regex | Select-Object -First 1 -expand href | ForEach-Object { 'https://github.com' + $_ }

    $version = $url64 -split '-' | Select-Object -Last 1 -Skip 3
    
    @{
      URL64 = $url64;
      Version = $version.Replace('v','')
      ReleaseNotes = "https://github.com/balena-io/balena-cli/releases/tag/${version}"
    }
}

update -ChecksumFor none