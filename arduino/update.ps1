import-module au

$releases = 'https://www.arduino.cc/en/Main/Software'


function global:au_SearchReplace {
    @{
        ".\legal\VERIFICATION.txt" = @{
            "(?i)(installer:).*"         = "`${1} $($Latest.URL32)"
            "(?i)(\s+SHA512SUMS:).*"     = "`${1} $($Latest.SHA512SUMS)"
            "(?i)(\s+sha256checksum:).*" = "`${1} $($Latest.Checksum32)"
            "(?i)(Get-RemoteChecksum).*" = "`${1} $($Latest.URL32)"
        }
    }
}


function global:au_BeforeUpdate { Get-RemoteFiles -Purge }


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 1 -expand href
    
    $version = $url -split '-' | select -Last 1 -Skip 1
    
    $url_sha = $download_page.links | ? href -match '.txt$' | select -First 1 -Skip 1 -expand href
    
    $url32 = 'https://downloads.arduino.cc/arduino-' + $version + '-windows.exe'
    
    $sha512sums = 'https:' + $url_sha
    
    return @{ URL32 = $url32; SHA512SUMS = $sha512sums; Version = $version }
}

update -ChecksumFor none
