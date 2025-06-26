$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f57a55ac740d/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.2.0b7.exe'
$checksum64     = '4effd93382eca3f2f77882e313e1ae3652ccc7f306912b904337af6011e74b68'

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
