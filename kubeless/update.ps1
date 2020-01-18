import-module au

$releases = 'https://github.com/kubeless/kubeless/releases/latest'

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

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }

function global:au_AfterUpdate ($Package)  {
  Set-DescriptionFromReadme $Package -SkipFirst 5
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '\.zip$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -Skip 2 -expand href | % { 'https://github.com' + $_ }

    $regex = '.*?\/tree\/.*?'
    $version_url = $download_page.links | ? href -match $regex | select -First 1 -expand href
    $version = $version_url -split '/' | select -Last 1
    
    @{
        URL64 = $url
        Version = $version.Replace('v','')
        ReleaseNotes = "https://github.com/kubeless/kubeless/releases/tag/${version}"
    }
}

update -ChecksumFor none
