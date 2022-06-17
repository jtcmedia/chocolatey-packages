$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/feea5ec8f162/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.1.5f1.exe'
$checksum64     = '3d240f41a1eec83221d2bdc1a90c15d84f0a11d26e11e4252d1ba3b14ab99629'

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
