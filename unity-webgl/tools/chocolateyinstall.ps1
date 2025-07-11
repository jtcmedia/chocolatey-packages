$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/377f5a9787ef/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.2.0b9.exe'
$checksum64     = '047827c3114c990615b2c59592399a1cdb3462849631dff46d324c2ec03d3bac'

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
