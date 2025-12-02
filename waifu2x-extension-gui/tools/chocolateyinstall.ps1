$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64 = 'https://github.com/AaronFeng753/Waifu2x-Extension-GUI/releases/download/v3.132.01/Waifu2x-Extension-GUI-v3.132.01-Win64.7z'
$checksum64 = '6eb3ef6c6fc3138ab99298f84369d32de7c93a7926f7cd23d6b00f9e1dc27d23'


$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  UnzipLocation   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"
  Url64bit        = $url64
  Checksum64      = $checksum64
  ChecksumType64  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$files = Get-ChildItem "$($packageArgs.UnzipLocation)\$env:ChocolateyPackageName" -Include *.exe -Recurse

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
    -TargetPath "$($packageArgs.UnzipLocation)\$env:ChocolateyPackageName\Waifu2x-Extension-GUI-Launcher.exe"
}

Remove-Item $toolsPath\*.7z -ea 0
