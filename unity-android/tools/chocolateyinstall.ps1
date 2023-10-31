$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2b639e48c919/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2023.1.18f1.exe'
$checksum64     = '3b2f689bb3da195da4c11e3565fecca281b50ecdcc441da84363f526188e4c23'

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
