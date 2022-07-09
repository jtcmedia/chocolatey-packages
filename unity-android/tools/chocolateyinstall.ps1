$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7da38d85baf6/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.3.6f1.exe'
$checksum64     = '26b5e775fce42971bad1d5182d3bf26ad5c41e3a8b1e9d4c1a6d297a811e6615'

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
