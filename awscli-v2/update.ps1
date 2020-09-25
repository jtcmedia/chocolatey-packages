import-module au

$releases = 'https://github.com/aws/aws-cli/releases'

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName)-v2.nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ChangeLog)`$2"
        }
        
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = 'zip$'
    $zip_url = $download_page.links | ? href -match $regex | select -First 1 -expand href
        
    $version = $zip_url -split '/|\.zip' | select -Last 1 -Skip 1

    $changeLog = "https://github.com/aws/aws-cli/blob/v2/CHANGELOG.rst#" + $version.Replace('.','')
    
    if ($version -match '^2') {
      $url64 = "https://awscli.amazonaws.com/AWSCLIV2-$version.msi"
    } else {
      return 'ignore'
    }
    
    @{
        URL64 = $url64
        Version = $version
        PackageName = 'awscli'
        ChangeLog = $changeLog
    }
}

update -ChecksumFor 64
