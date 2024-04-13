$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64 = 'https://github.com/AaronFeng753/Waifu2x-Extension-GUI/releases/download/v3.112.01/Waifu2x-Extension-GUI-v3.112.01-Win64.7z'
$checksum64 = '61183a1b0b63386a569a6a276a60736ff87c0f45b6a684f3057056a3ecb80c26'


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
  if (!($file.Name.Equals("Waifu2x-Extension-GUI-Launcher.exe"))) {
    #generate an ignore file
    New-Item "$file.ignore" -type file -Force | Out-Null
  }
  else {
    New-Item "$file.gui" -type file -Force | Out-Null
  }
}

$pp = Get-PackageParameters

if (!($pp.NOICON)) {
  $desktopPath = [Environment]::GetFolderPath("Desktop")

  Install-ChocolateyShortcut `
    -ShortcutFilePath "$desktopPath\Waifu2x-Extension-GUI.lnk" `
    -TargetPath "$env:ChocolateyInstall\bin\Waifu2x-Extension-GUI-Launcher.exe" `
    -WorkingDirectory "$toolsPath"
}

Remove-Item $toolsPath\*.7z -ea 0
