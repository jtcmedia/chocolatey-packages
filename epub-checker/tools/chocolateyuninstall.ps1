$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\EPUB-Checker.lnk" -ErrorAction SilentlyContinue -Force
