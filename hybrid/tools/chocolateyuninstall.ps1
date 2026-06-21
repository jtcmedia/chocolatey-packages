$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\hybrid.lnk" -ErrorAction SilentlyContinue -Force
