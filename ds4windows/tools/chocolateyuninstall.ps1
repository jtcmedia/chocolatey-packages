$packageName = $env:ChocolateyPackageName
$startupPath = [Environment]::GetFolderPath("Startup")
$startMenuPath = [Environment]::GetFolderPath("CommonPrograms")

Remove-Item "$startupPath\$packageName.lnk" -ErrorAction SilentlyContinue -Force
Remove-Item "$startMenuPath\$packageName.lnk" -ErrorAction SilentlyContinue -Force
