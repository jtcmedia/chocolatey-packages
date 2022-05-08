$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d6360bedb9a0/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.2f1.exe'
$checksum64     = 'd39fd1a4b064e51df078efef2ae36cd3405d14721a2f1f288a4c2a7b0160f1ca'

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
