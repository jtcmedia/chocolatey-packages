$ErrorActionPreference = 'Stop'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition

$url32      = 'https://github.com/davidferguson/pibakery/releases/download/v2.0.0/PiBakery-win32-ia32.zip'
$checksum32 = '1a478ffc3a99ad85f53756698a368efcc2c0211d765ebad621cf483c9ccc7f32'
$url64      = 'https://github.com/davidferguson/pibakery/releases/download/v2.0.0/PiBakery-win32-x64.zip'
$checksum64 = '3005fe027850ace17939a0c6987defa7a085994ef1e02ab7a13106d33ed81187'


$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  Url             = $url32
  UnzipLocation   = $toolsPath
  Url64bit        = $url64
  Checksum        = $checksum32
  ChecksumType    = 'sha256'
  Checksum64      = $checksum64
  ChecksumType64  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$pp = Get-PackageParameters
if (-Not $pp.NoDesktopIcon) {
  $desktopPath = [Environment]::GetFolderPath("Desktop")
  Install-ChocolateyShortcut `
    -ShortcutFilePath "$desktopPath\PiBakery.lnk" `
    -TargetPath "$env:ChocolateyInstall\bin\PiBakery.exe"
}
