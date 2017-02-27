import-module au

$releases = 'http://hadoop.apache.org/releases.html'


function global:au_SearchReplace {
    @{
        ".\legal\VERIFICATION.txt" = @{
            "(?i)(\s+zip:).*"                = "`${1} $($Latest.MIRRORS)"
            "(?i)(\s+SHASUMS:).*"            = "`${1} $($Latest.SHASUMS)"
            "(?i)(\s+checksum sha-256:).*"   = "`${1} $($Latest.Checksum32)"
        }
    }
}


function global:au_BeforeUpdate { Get-RemoteFiles -Purge }


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '\.tar\.gz$'
    
    $get_dl_url = $download_page.links | ? href -match $regex | select -First 1 -Skip 5 -expand href
    
    $version = $get_dl_url -split '/|-' | select -Last 1 -Skip 2
    
    $get_mirror_page = Invoke-WebRequest -Uri $get_dl_url -UseBasicParsing
    
    $url = $get_mirror_page.links | ? href -match $regex | select -First 1 -expand href
       
    $shasums = $download_page.links | ? href -match '.mds$' | select -First 1 -Skip 5 -expand href
    
    return @{ URL32 = $url; SHASUMS = $shasums; Version = $version; MIRRORS = $get_dl_url }
}

update -ChecksumFor none
