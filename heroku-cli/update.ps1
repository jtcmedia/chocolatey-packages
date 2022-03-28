import-module AU

$releases  = 'https://devcenter.heroku.com/articles/heroku-cli'

function global:au_SearchReplace {
    @{
        ".\legal\VERIFICATION.txt" = @{
            "(?i)(\s+x32:).*"            = "`${1} $($Latest.URL32)"
            "(?i)(\s+x64:).*"            = "`${1} $($Latest.URL64)"
            "(?i)(\s+checksum32:).*"     = "`${1} $($Latest.Checksum32)"
            "(?i)(\s+checksum64:).*"     = "`${1} $($Latest.Checksum64)"
            "(?i)(Get-RemoteChecksum).*" = "`${1} $($Latest.URL64)"
        }

        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
    }
}


function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }


function global:au_GetLatest {
    $outFile = "heroku-64bit-installer.exe"
    
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 2 -expand href
    
    Invoke-WebRequest $url[0] -OutFile "$PSScriptRoot\$outFile"
    
    $version = ((Get-Item $outFile).VersionInfo.ProductVersion).Substring(0, 6)
    
    #don't need installer anymore
    Remove-Item $outFile -Force
    
    @{
      URL32 = $url[1]
      URL64 = $url[0]
      Version = $version
      ReleaseNotes = "https://github.com/heroku/cli/releases/tag/v${version}"
    }
}

update -ChecksumFor none
