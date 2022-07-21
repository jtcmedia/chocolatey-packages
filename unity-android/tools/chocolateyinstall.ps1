$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9aa0f82c4f96/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.1.10f1.exe'
$checksum64     = 'e3bf5effa8086319116972784118b97735876c1c4ffc4fd9ad92c0b642101cfe'

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
