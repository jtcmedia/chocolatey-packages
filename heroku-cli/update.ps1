import-module AU

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
    
    $download_page = Invoke-WebRequest -Uri $releases
    
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 2 -expand href
        
    $toolsPath = "$PSScriptRoot\tools"
    
    $client = New-Object System.Net.WebClient
        $fn = $changelog -split '/' | select -Last 1
        $client.DownloadFile($changelog, "$toolsPath\$fn")
        $version = Get-Content "$toolsPath\$fn" | select -First 1 | % { $_ -split '\s+' | select -First 1 }
    $client.Dispose()
    
    #don't need changelog file anymore
    Remove-Item "$toolsPath\$fn"
    
    return @{ URL32 = $url[0]; URL64 = $url[1]; Version = $version }
}

update -ChecksumFor none
