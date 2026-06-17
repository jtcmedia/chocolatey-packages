$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\mp4forge.lnk" -ErrorAction SilentlyContinue -Force
