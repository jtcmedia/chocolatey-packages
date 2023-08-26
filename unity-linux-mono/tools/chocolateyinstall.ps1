$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/661833f8c66c/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.1.10f1.exe'
$checksum64     = '24ff00df14bc69c3d378548cb3ebad98522c02626b1a44bd226f4610ec4e5e3b'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
