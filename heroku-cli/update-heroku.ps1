import-module AU

$releases  = 'https://devcenter.heroku.com/articles/heroku-cli'

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
    $outFile    = "heroku-64bit-installer.exe"
    
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    $regex = '.exe$'
    $url = $download_page.links | ? href -match $regex | select -First 2 -expand href
    
    Invoke-WebRequest $url[1] -OutFile "$PSScriptRoot\$outFile"
    
    #$current_checksum = ((Get-Item .\legal\VERIFICATION.txt | sls '\bchecksum64\b') -split ":" | Select -Last 1).Trim()
    #$remote_checksum = (Get-FileHash $outFile).Hash 
    
    #if ($current_checksum -ne $remote_checksum) {
    #    Write-Host 'Remote Checksum different from current, force update'
    
        # install heroku and run version parameter to d/l updates
        Write-Host 'Installing Heroku...it is the only way to get version number'
        # use Out-Null so script waits for install to finish
        # ".\$outFile /S" | Out-Null
        Start-Process -FilePath "$PSScriptRoot\$outFile" -ArgumentList "/S" -Wait
        Start-Process -FilePath "heroku.exe" -ArgumentList "--version" -Wait
        
        # now can get version of cli
        $full_ver = heroku --version | % { $_ -split '/' | select -First 1 -Skip 1 }
        $version = $full_ver -split '-' | select -First 1
    #}
    
    #don't need installer anymore
    #Remove-Item $outFile -Force
    
    return @{ URL32 = $url[0]; URL64 = $url[1]; Version = $version }
}

update -ChecksumFor none
