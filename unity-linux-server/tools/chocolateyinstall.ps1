$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4ff56b3ea44c/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.0f1.exe'
$checksum64     = '02f5ee72ce6ae6c3d0b3288f8bbe0b7dcdda5ce816aeef9c4b55767e3d535abc'

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
