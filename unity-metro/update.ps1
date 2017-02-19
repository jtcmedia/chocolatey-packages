. $PSScriptRoot\..\unity\update.ps1


function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url\s*=\s*)('.*')"          = "`$1'$($Latest.URLmetro)'"
            "(^[$]checksum\s*=\s*)('.*')"     = "`$1'$($Latest.ChecksumMetro)'"
        }
        
        ".\unity-metro.nuspec" = @{
            "(\<dependency id=`"unity`" version=)`"([^`"]+)`"" = "`$1`"$($Latest.Version)`""
        }
    }
}

update -ChecksumFor none
