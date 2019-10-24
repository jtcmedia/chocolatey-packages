$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/923acd2d43aa/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.2.10f1.exe'
$checksum64     = '9e92e5b6568688924f160a552058362c5160af8ddda8d4f6966e25e0f19f51cb'

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
