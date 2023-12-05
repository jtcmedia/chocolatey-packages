$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/dfe9eb92cac5/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.2.2f1.exe'
$checksum64     = 'b275e63745ad5b1efc6df2d2c54415571a589686b23b07b01ae74cb505a9c4b0'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
