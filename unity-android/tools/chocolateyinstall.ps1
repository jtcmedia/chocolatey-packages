$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/915a7af8b0d5/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.3.33f1.exe'
$checksum64     = 'fa6390246e06444e2f817ea72ff6d5f8c77c0de6586af3974380764fd0bacc69'

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
