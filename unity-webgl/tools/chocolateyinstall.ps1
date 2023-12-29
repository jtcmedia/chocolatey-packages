$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/accd6d46ced1/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.2.4f1.exe'
$checksum64     = '36aea95b8d2af6d373773445727a056d1420f27807d287afaabbb024bc40b5ca'

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
