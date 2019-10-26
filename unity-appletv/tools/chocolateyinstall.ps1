$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/923acd2d43aa/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.2.10f1.exe'
$checksum64     = 'f1b7b242c630ffe3e27e86bca615252f7a1f30b1c9fb1af0b740fc606107e679'

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
