$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\PrusaSlicer.lnk" -ErrorAction SilentlyContinue -Force
