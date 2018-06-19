. $PSScriptRoot\..\handbrake.install\update.ps1

function global:au_SearchReplace {
    @{
        ".\handbrake.nuspec" = @{
            "(\<dependency id=`"$($Latest.PackageName).install`" version=)`"([^`"]+)`"" = "`$1`"[$($Latest.Version)]`""
        }
    }
}

update -ChecksumFor none
