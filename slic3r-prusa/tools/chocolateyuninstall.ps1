$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\Slic3r Prusa Edition.lnk" -ErrorAction SilentlyContinue -Force
