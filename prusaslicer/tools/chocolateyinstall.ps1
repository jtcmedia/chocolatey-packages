$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileFullPath64  = gi $toolsPath\*_x64.zip
  Destination     = $toolsPath
}

Get-ChocolateyUnzip @packageArgs

$files = Get-ChildItem $toolsPath -Include *.exe -Recurse

foreach ($file in $files) {
  if (!($file.Name.Equals("prusa-slicer.exe"))) {
    #generate an ignore file
    New-Item "$file.ignore" -type file -Force | Out-Null
  }
  else {
    New-Item "$file.gui" -type file -Force | Out-Null
  }
}

$desktopPath = [Environment]::GetFolderPath("Desktop")

Install-ChocolateyShortcut `
  -ShortcutFilePath "$desktopPath\PrusaSlicer.lnk" `
  -TargetPath "$env:ChocolateyInstall\bin\prusa-slicer.exe"

#Don't need installer zips anymore
rm $toolsPath\*.zip -ea 0 -force
