$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/244b723c30a6/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.19f1.exe'
$checksum64     = '61b12b0e74a3734ae96f0e06ed90380a3d621f0b6219e511eead8bc65e8bfbb3'

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
