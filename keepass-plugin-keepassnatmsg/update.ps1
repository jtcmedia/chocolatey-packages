import-module au

$releases    = 'https://github.com/smorks/keepassnatmsg/releases'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            '(^\s*url\s*=\s*)(''.*'')'            = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"       = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksumType\s*=\s*)('.*')"   = "`$1'$($Latest.ChecksumType32)'"
        }
    }
}

function global:au_BeforeUpdate() {
    $Latest.Checksum32 = Get-RemoteChecksum $Latest.Url32
    $Latest.ChecksumType32 = 'SHA256'
}

function global:au_GetLatest {
    $page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    $regexUrl = "KeePassNatMsg-v(?<version>.*)-binaries.zip"

    $url =  $page.links | Where-Object href -match $regexUrl | Select-Object -First 1 -expand href

    return @{
        URL32        = 'https://github.com'+ $url
        Version      = $matches.version
    }
}

update -ChecksumFor none
