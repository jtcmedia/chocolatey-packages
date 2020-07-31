#import-module au

#$unity_data = Import-CliXml $PSScriptRoot\..\_unity.xml

. $PSScriptRoot\..\unity-whatsnew\update.ps1

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"          = "`$1'$($Latest.URL_android)'"
            "(^[$]checksum64\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum64)'"
        }
        
        ".\unity-android-whatsnew.nuspec" = @{
            "(\<id\>)([^`<]+)" = "`$1$($Latest.ID_android)"
            "(\<dependency id=`"unity`" version=)`"([^`"]+)`"" = "`$1`"$($Latest.Version)`""
        }
    }
}

update -ChecksumFor 64
