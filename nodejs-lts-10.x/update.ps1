import-module au

$releases = 'https://nodejs.org/dist/latest-v10.x/'


function global:au_SearchReplace {
    @{
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

function prepend_url([string] $url) {
    $url = "https://nodejs.org/dist/latest-v10.x/" + $url
    $url
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.msi$'
    $url = $download_page.links | ? href -match $regex | select -First 2 -expand href
    
    $version = ($url[0] -split '-' | select -Last 1 -Skip 1).Substring(1)
    
    $shasums = $download_page.links | ? href -match '.asc$' | select -First 1 -expand href
    
    return @{ URL32 = prepend_url $url[1]; URL64 = prepend_url $url[0]; SHASUMS = prepend_url $shasums; Version = $version; PackageName = 'nodejs-lts' }
}

update -ChecksumFor none
