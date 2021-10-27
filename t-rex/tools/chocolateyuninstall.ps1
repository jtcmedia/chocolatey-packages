$destDir = Join-Path $(Get-ToolsLocation) $env:ChocolateyPackageName
Remove-Item $destDir -Force -Recurse

Uninstall-BinFile -Name "$env:ChocolateyPackageName"

