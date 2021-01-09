$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://github.com/AaronFeng753/Waifu2x-Extension-GUI/releases/download/v2.58.13/Waifu2x-Extension-GUI-v2.58.13-Win64.7z'
$checksum64 = 'b6e6e65b892ea7effb1b3026165b1dd1c5df197f42ea1b4fd0e893c8c719e7e5'

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  UnzipLocation   = $toolsPath
  Url64bit        = $url64
  Checksum64      = $checksum64
  ChecksumType64  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$files = Get-ChildItem $toolsPath -Include *.exe -Recurse

foreach ($file in $files) {
  if (!($file.Name.Equals("Waifu2x-Extension-GUI-Start.exe"))) {
    #generate an ignore file
    New-Item "$file.ignore" -type file -Force | Out-Null
  }
  else {
    New-Item "$file.gui" -type file -Force | Out-Null
  }
}


$desktopPath = [Environment]::GetFolderPath("Desktop")

Install-ChocolateyShortcut `
  -ShortcutFilePath "$desktopPath\Waifu2x-Extension-GUI.lnk" `
  -TargetPath "$env:ChocolateyInstall\bin\Waifu2x-Extension-GUI-Start.exe" `
  -WorkingDirectory "$toolsPath"

rm $toolsPath\*.7z -ea 0
