$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\PrusaSlicer.lnk" -ErrorAction SilentlyContinue -Force
$startMenuPath = [Environment]::GetFolderPath("Programs")
Remove-Item "$startMenuPath\PrusaSlicer.lnk" -ErrorAction SilentlyContinue -Force
