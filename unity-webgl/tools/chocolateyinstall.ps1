$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/95c298372b1e/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.2.19f1.exe'
$checksum64     = 'e1d1b2349c8a89cb284ae1e161def7b96d1f3cd2328b328815d2aa7fed8a4edb'

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
