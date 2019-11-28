$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/49dd4e9fa428/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.2.14f1.exe'
$checksum64     = '08d2b51bb6f99a497e9624c2d05ab2c0a69fd5bfc5040c72113a6ebbb18bcebc'

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
