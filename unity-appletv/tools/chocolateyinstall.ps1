$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/fef62e97e63b/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.1.1f1.exe'
$checksum64     = '8b042358aec594ed03872d4709de7ee35d58b6c8ac0d00ff0936db2abb002a7b'

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
