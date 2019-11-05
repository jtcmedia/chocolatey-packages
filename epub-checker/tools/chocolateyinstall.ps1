$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Get-Item "$toolsDir\*.zip"

Get-ChocolateyUnzip -FileFullPath $fileLocation -Destination $toolsDir -PackageName $env:ChocolateyPackageName

$desktopPath = [Environment]::GetFolderPath("Desktop")

Install-ChocolateyShortcut `
  -ShortcutFilePath "$desktopPath\pagina EPUB-Checker.lnk" `
  -TargetPath "$env:ChocolateyInstall\bin\EPUB-Checker.exe"

#Don't need installer zips anymore
rm $toolsDir\*.zip -ea 0 -force
