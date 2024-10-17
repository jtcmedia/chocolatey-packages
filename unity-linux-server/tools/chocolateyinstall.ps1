$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0da89fac8e79/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.3.45f1.exe'
$checksum64     = '9b01dd1395ebdadd7e71b7a80962234c18342dca20b8286cb6708a3af722f216'

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
