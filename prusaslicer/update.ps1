import-module au
. (Join-Path '..' 'helper-scripts' 'Get-GitHubLatestReleaseLinks.ps1')

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
          "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
            
        ".\legal\VERIFICATION.txt" = @{
            "(?i)(\s+x64:).*"           = "`${1} $($Latest.URL64)"
            "(?i)(\s+checksum64:).*"    = "`${1} $($Latest.Checksum64)"
            "(?i)(Get-RemoteChecksum).*" = "`${1} $($Latest.URL64)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge }

function global:au_GetLatest {
    $download_page = Get-GitHubLatestReleaseLinks -User "prusa3d" -Repository "PrusaSlicer"
    
    $regex = 'win64'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href | % { 'https://github.com' + $_ }
        
    $version = ($url -split '/' | select -Last 1 -Skip 1) -split 'version_' | select -Last 1
    
    @{
        URL64 = $url
        Version = $version
        ReleaseNotes = "https://github.com/prusa3d/PrusaSlicer/releases/tag/version_${version}"
    }
}

update -ChecksumFor none
