$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/95a4219250e5/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.36f1.exe'
$checksum64     = '018f41f772cb2d5d3c7545ad5d952a0c5e9699a8d4fa6f944a130e17b09cabe2'

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
