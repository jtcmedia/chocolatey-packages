$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://www.filesplitter.org/Free-File-Splitter-v5.0.1189.exe'
$checksum32 = '3e65663b3694a766be293e26d81a27c46b03afdda9db36cb2d4983a2378ed375'

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileFullPath    = "$($toolsDir)\file-splitter.exe"
  Url             = $url32
  Checksum        = $checksum32
  ChecksumType    = 'sha256'
}


Get-ChocolateyWebFile @packageArgs

New-Item "$($toolsDir)\file-splitter.exe.gui" -type file -force | Out-Null

$pp = Get-PackageParameters

if (!($pp.NOICON)) {
  $desktopPath = [Environment]::GetFolderPath("Desktop")

  Install-ChocolateyShortcut `
    -ShortcutFilePath "$desktopPath\File Splitter.lnk" `
    -TargetPath "$($toolsDir)\file-splitter.exe" `
}
