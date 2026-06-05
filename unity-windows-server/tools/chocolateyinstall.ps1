$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cf0352b38e81/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.3.17f1.exe'
$checksum64     = 'ca3da08d8a2e247abb672042640a6cbb4b13949cfc95d7ecfeccf062b2ea28ef'

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
