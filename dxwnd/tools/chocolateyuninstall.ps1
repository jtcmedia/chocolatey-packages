$destDir = Join-Path $(Get-ToolsLocation) $env:ChocolateyPackageName
Remove-Item $destDir -Force -Recurse

# Remove Shortcut
$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\DxWnd.lnk" -ErrorAction SilentlyContinue -Force
