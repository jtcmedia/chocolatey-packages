import-module chocolatey-au

$lts_versions = '24', '22', '20'

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
          "(\<docsUrl\>).*?(\</docsUrl\>)" = "`${1}$($Latest.DocsUrl)`$2"
        }
      
        ".\legal\VERIFICATION.txt" = @{
            "(?i)(\s+x32:).*"            = "`${1} $($Latest.URL32)"
            "(?i)(\s+x64:).*"            = "`${1} $($Latest.URL64)"
            "(?i)(\s+SHASUMS:).*"        = "`${1} $($Latest.SHASUMS)"
            "(?i)(\s+checksum32:).*"     = "`${1} $($Latest.Checksum32)"
            "(?i)(\s+checksum64:).*"     = "`${1} $($Latest.Checksum64)"
            "(?i)(Get-RemoteChecksum).*" = "`${1} $($Latest.URL64)"
        }
    }
}


function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }


function global:au_GetLatest {
    
    $streams = [ordered] @{}
  
    $lts_versions | % {

        $lts_release =  "https://nodejs.org/download/release/latest-v$_.x/"
        $download_page = Invoke-WebRequest -Uri $lts_release -UseBasicParsing
      
        $regex = 'x\d\d.msi$'
        $urls = $download_page.links | ? href -match $regex | select -First 2 -expand href | % { 'https://nodejs.org' + $_ }
        
        $version = $urls[0] -split '-' | select -Last 1 -Skip 1
        
        $shasums = $download_page.links | ? href -match '.txt$' | select -First 1 -expand href | % { 'https://nodejs.org' + $_ }

        $streams.$_ = @{
          URL32 = $urls[1]
          URL64 = $urls[0]
          SHASUMS = $shasums
          Version = $version.Replace('v','')
          ReleaseNotes = "https://github.com/nodejs/node/blob/master/doc/changelogs/CHANGELOG_V$_.md#" + $version.Replace('v','')
          DocsUrl = "https://nodejs.org/docs/latest-v$_.x/api/index.html"
        }
    }

    Write-Host $streams.Count 'streams collected'

    @{
        Streams = $streams
    }
    
}

update -ChecksumFor none
