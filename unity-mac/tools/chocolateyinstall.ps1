$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c5d806317f84/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.2.20f1.exe'
$checksum64     = '3220bba844339d2c34246fda852df86a9c9d3710b7ed48f2110298a811ff4282'

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
