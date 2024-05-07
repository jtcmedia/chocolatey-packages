import-module chocolatey-au

$releases = 'https://sourceforge.net/projects/dxwnd/files/Latest%20build/'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
          "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
          "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $regex = '_build.rar/download'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href

    $version = $url -split '/' | select -Last 1 -Skip 1 | % { $_.TrimEnd('_build.rar') } | % { $_.Replace('v','') } | `
      % { $_.Replace('_','.') } | % { $_.Replace('f', '') } | % { $_.Replace('fx', '') } | % { $_.Replace('V', '') }

    
    @{
        URL32 = $url
        Version = $version
    }
}

update -ChecksumFor 32
