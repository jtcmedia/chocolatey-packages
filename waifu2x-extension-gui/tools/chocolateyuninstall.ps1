$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\Waifu2x-Extension-GUI.lnk" -ErrorAction SilentlyContinue -Force
