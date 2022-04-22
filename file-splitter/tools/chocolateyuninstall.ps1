$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\File Splitter.lnk" -ErrorAction SilentlyContinue -Force
