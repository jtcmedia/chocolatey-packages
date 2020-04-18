$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\PiBakery.lnk" -ErrorAction SilentlyContinue -Force
