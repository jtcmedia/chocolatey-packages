$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b2c9b1ac6cc0/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.2.14f1.exe'
$checksum64     = '7ce4e3c86a8e5ef8f1176657aa66dc7d4542bd81ce4d3d1e3b859b1d446b7808'

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
