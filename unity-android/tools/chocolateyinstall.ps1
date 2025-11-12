$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7134d7685e5d/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.2.11f1.exe'
$checksum64     = '2a25c8e2c558ca314bf0ee0f6025e1cfc70ed939bd7f9f4fbecf0a05f521a1f9'

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
