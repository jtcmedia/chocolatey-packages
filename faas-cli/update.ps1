import-module au

$releases = 'https://github.com/openfaas/faas-cli/releases/latest'

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
      
      
        ".\legal\VERIFICATION.txt" = @{
          "(?i)(\s+x32:).*"                   = "`${1} $($Latest.URL32)"
          "(?i)(Get-RemoteChecksum).*"        = "`${1} $($Latest.URL32)"
          "(?i)(\s+checksum_from_file:).*"    = "`${1} $($Latest.ChecksumUrl)"
          "(?i)(\s+checksum32:).*"            = "`${1} $($Latest.Checksum32)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href | % { 'https://github.com' + $_ }

    $regex = '.exe.sha256$'
    $checksum_url = $download_page.links | ? href -match $regex | select -First 1 -expand href | % { 'https://github.com' + $_ }
    
    $version = $url -split '/' | select -Last 1 -Skip 1
    
    @{
      URL32 = $url
      Version = $version
      ChecksumUrl = $checksum_url
      ReleaseNotes = "https://github.com/openfaas/faas-cli/releases/tag/${version}"
    }
}

update -ChecksumFor none