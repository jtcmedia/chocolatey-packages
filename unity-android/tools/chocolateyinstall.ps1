$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/17028576122a/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.5f1.exe'
$checksum64     = '4849a52c309fe6934efc4f36f524f0b9e9c6e3c0de2a63cd781fcf9b70d6e851'

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
