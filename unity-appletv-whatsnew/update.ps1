import-module au

#$unity_data = Import-CliXml $PSScriptRoot\..\_unity.xml

. $PSScriptRoot\..\unity-whatsnew\update.ps1
function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"          = "`$1'$($Latest.URL_appletv)'"
            "(^[$]checksum64\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum64)'"
        }
        
        ".\unity-appletv-whatsnew.nuspec" = @{
            "(\<dependency id=`"unity`" version=)`"([^`"]+)`"" = "`$1`"$($Latest.Version)`""
        }
    }
}

update -ChecksumFor 64
