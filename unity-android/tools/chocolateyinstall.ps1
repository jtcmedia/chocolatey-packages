$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9c7b5e468860/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.56f1.exe'
$checksum64     = '22821d0857f4c2c2d8038c1d6a3ba2437726f2072b683845741bc38c5c0c94d9'

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
