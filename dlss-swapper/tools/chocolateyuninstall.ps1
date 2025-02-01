$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\DLSS Swapper.lnk" -ErrorAction SilentlyContinue -Force
