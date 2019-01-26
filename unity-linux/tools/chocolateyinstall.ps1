$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/393bae82dbb8/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.3.3f1.exe'
$checksum64     = '5e46117f9a6831859a2a0bd7bd24bfef308a89400008f9435f50236976294c5f'

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
