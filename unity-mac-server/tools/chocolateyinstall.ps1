$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ee5a2aa03ab2/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.33f1.exe'
$checksum64     = 'c1d428d6d93e76de8a9800cb6ec04d0a780b3640822db59cf1a53c68fde1ce1d'

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
