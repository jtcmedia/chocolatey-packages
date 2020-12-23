$localAppData = [Environment]::GetFolderPath("LocalApplicationData")
Remove-Item "$localAppData\Cypress" -Recurse -ErrorAction SilentlyContinue -Force

$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\Cypress.lnk" -ErrorAction SilentlyContinue -Force
