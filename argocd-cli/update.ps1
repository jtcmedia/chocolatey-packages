import-module au

$releases = 'https://github.com/argoproj/argo-cd/releases/latest'

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

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix -FileNameBase 'argocd' }

function global:au_GetLatest {
    $version = "v2.4.15"
    $url = "https://github.com/argoproj/argo-cd/releases/download/${version}/argocd-windows-amd64.exe"
    
    @{
        URL64 = $url
        Version = $version.Replace('v','')
        ReleaseNotes = "https://github.com/argoproj/argo-cd/releases/tag/${version}"
    }
}

Update-Package -ChecksumFor none
