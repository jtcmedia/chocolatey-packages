$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d46ecc5f5049/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.6.0b6.exe'
$checksum64     = 'b7f6a6657c255d6a2eae59ef27135be5fb7d110dddcfd9f45c5a158dc555e5a1'

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
