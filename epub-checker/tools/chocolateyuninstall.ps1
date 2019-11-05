$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\pagina EPUB-Checker.lnk" -ErrorAction SilentlyContinue -Force
