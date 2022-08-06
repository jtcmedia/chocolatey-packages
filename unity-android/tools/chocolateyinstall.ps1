$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/916d9c03b898/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.1.12f1.exe'
$checksum64     = '4fb4db90ac443d6716041b0df83545508a67f2feb8a95b1f5db229afcfab5edc'

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
