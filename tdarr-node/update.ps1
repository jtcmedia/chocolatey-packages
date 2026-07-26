import-module chocolatey-au

$releases = 'https://storage.tdarr.io/versions.json'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
          "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
          "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_json = Invoke-RestMethod $releases

    # 1st obj is latest version
    $url = (($download_json.PSObject.Properties | select -First 1).Value.win32_x64.Tdarr_Node)
    $version = ($url -split '/')[-3]

    @{
        URL64 = $url
        Version = $version
    }
}

update -ChecksumFor 64
