import-module AU
import-module "$PSScriptRoot/../../extensions/chocolatey-core.extension/extensions/chocolatey-core.psm1"

$releases  = 'https://devcenter.heroku.com/articles/heroku-cli'
$changelog = 'https://raw.githubusercontent.com/heroku/cli/master/CHANGELOG'

function global:au_SearchReplace {
    @{
        ".\legal\VERIFICATION.txt" = @{
            "(?i)(\s+x32:).*"            = "`${1} $($Latest.URL32)"
            "(?i)(\s+x64:).*"            = "`${1} $($Latest.URL64)"
            "(?i)(\s+checksum32:).*"     = "`${1} $($Latest.Checksum32)"
            "(?i)(\s+checksum64:).*"     = "`${1} $($Latest.Checksum64)"
            "(?i)(Get-RemoteChecksum).*" = "`${1} $($Latest.URL64)"
        }
    }
}


function global:au_BeforeUpdate { Get-RemoteFiles -Purge }


function global:au_GetLatest {
    
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 2 -expand href
        
    $cl = Get-WebContent $changelog 
    $version = $cl | select -First 1 | % { $_ -split '\s+' | select -First 1 }
    
    return @{ URL32 = $url[0]; URL64 = $url[1]; Version = $version }
}

update -ChecksumFor none
