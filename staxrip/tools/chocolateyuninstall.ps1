﻿#Remove shortcut
$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\StaxRip.lnk" -ErrorAction SilentlyContinue -Force

#Remove shim
Uninstall-BinFile -Name $env:ChocolateyPackageName
