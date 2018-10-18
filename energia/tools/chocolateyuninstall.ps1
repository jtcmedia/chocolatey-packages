$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\Energia.lnk" -ErrorAction SilentlyContinue -Force
