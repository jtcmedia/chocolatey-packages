$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\nvidiaProfileInspector.lnk" -ErrorAction SilentlyContinue -Force
