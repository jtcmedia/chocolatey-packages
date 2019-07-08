import-module au

$releases = 'https://github.com/openfaas/faas-cli/releases'

function global:au_SearchReplace {
    @{
        ".\legal\VERIFICATION.txt" = @{
          "(?i)(\s+x32:).*"                   = "`${1} $($Latest.URL32)"
          "(?i)(Get-RemoteChecksum).*"        = "`${1} $($Latest.URL32)"
          "(?i)(\s+checksum_from_file:).*"    = "`${1} $($Latest.ChecksumUrl)"
          "(?i)(\s+checksum32:).*"            = "`${1} $($Latest.Checksum32)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href

    $regex = '.exe.sha256$'
    $checksum_url = $download_page.links | ? href -match $regex | select -First 1 -expand href
    
    $version = $url -split '/' | select -Last 1 -Skip 1
    
    $url32 = 'https://github.com' + $url
    $checksum_url = 'https://github.com' + $checksum_url
    
    return @{ URL32 = $url32; Version = $version; ChecksumUrl = $checksum_url }
}

update -ChecksumFor none