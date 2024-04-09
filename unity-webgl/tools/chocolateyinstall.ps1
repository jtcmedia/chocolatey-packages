$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/396a1c6fe404/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.2.17f1.exe'
$checksum64     = '78b8eae75c198984f99be34bebea05e3c8a44136d0d57f130411228b0f1c7ee5'

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
