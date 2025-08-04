$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64 = 'https://github.com/AaronFeng753/Waifu2x-Extension-GUI/releases/download/v3.128.01/Waifu2x-Extension-GUI-v3.128.01-Win64.7z'
$checksum64 = 'edad21c665483f986b973bc40b69c4a1634aead2ebabcdd4ec6d3e92e21bcb0e'


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
