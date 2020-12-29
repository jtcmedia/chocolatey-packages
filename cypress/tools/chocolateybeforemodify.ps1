# remove older pkg directory
$destDir = Join-Path $(Get-ToolsLocation) $env:ChocolateyPackageName
Remove-Item $destDir -Force -Recurse