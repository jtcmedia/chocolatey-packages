$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/09bebd6e9324/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.11f1.exe'
$checksum64     = 'eec0e7cfb80737e09e8b3d3dac50b364c7236ed9791de75835d3ce0f6919b3c1'

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
