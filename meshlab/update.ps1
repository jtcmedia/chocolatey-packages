import-module au

$releases = 'https://github.com/cnr-isti-vclab/meshlab/releases/latest'

function global:au_SearchReplace {
    @{
        ".\tools\VERIFICATION.txt" = @{
            "(?i)(\s+x64:).*"           = "`${1} $($Latest.URL64)"
            "(?i)(\s+checksum64:).*"    = "`${1} $($Latest.Checksum64)"
            "(?i)(Get-RemoteChecksum).*" = "`${1} $($Latest.URL64)"
        }
    }
}


function global:au_BeforeUpdate { Get-RemoteFiles -Purge }


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = 'exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href | % { 'https://github.com' + $_ }

    if ( $url -eq $null) {
      # beta
      $regex = 'zip$'
      $url = $download_page.links | ? href -match $regex | select -First 1 -Skip 1 -expand href | % { 'https://github.com' + $_ }
    }
        
    if ( $url -match 'exe$') {
      $version = ($url -split '/' | select -Last 1 -Skip 1).Substring(7)
    } else {
      # beta
      $version = ($url -split '/|-' | select -Last 1 -Skip 1).Substring(7) + '-beta'
    }
    
    return @{ URL64 = $url; Version = $version }
}

update -ChecksumFor none
