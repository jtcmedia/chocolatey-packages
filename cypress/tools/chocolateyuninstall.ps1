# Remove Shortcut
$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\Cypress.lnk" -ErrorAction SilentlyContinue -Force
