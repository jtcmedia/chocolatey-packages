$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a18e2220bd50/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.65f1.exe'
$checksum64     = '98dc74b744eeb11f2d2884b2f1bb35c7d799b9b00f32e1472a87354c5a87bc1c'

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
