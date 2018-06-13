$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$installerFile = if ((Get-ProcessorBits 64) -and $env:chocolateyForceX86 -ne 'true') {
         Write-Host "Installing 64 bit version"; Get-Item "$toolsDir\*_x64.zip"
} else { Write-Host "Installing 32 bit version"; Get-Item "$toolsDir\*_x32.zip" }

Get-ChocolateyUnzip $installerFile $toolsDir

$files = Get-ChildItem $toolsDir -Include *.exe -Recurse

foreach ($file in $files) {
  if (!($file.Name.Equals("slic3r.exe"))) {
    #generate an ignore file
    New-Item "$file.ignore" -type file -Force | Out-Null
  }
  else {
    New-Item "$file.gui" -type file -Force | Out-Null
  }
}

$desktopPath = [Environment]::GetFolderPath("Desktop")

Install-ChocolateyShortcut `
  -ShortcutFilePath "$desktopPath\Slic3r Prusa Edition.lnk" `
  -TargetPath "$env:ChocolateyInstall\bin\slic3r.exe"

#Don't need installer zips anymore
rm $toolsDir\*.zip -ea 0 -force
