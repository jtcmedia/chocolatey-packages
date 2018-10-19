$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$installerFile = Get-Item "$toolsDir\*_x32.zip"

Get-ChocolateyUnzip $installerFile $toolsDir

$files = Get-ChildItem $toolsDir -Include *.exe -Recurse

foreach ($file in $files) {
  if (!($file.Name.Equals("energia.exe"))) {
    #generate an ignore file
    New-Item "$file.ignore" -type file -Force | Out-Null
  }
  else {
    New-Item "$file.gui" -type file -Force | Out-Null
  }
}

$desktopPath = [Environment]::GetFolderPath("Desktop")

Install-ChocolateyShortcut `
  -ShortcutFilePath "$desktopPath\Energia.lnk" `
  -TargetPath "$env:ChocolateyInstall\bin\energia.exe"

#Don't need installer zips anymore
rm $toolsDir\*.zip -ea 0 -force
