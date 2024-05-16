$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d9cf669c6271/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.1f1.exe'
$checksum64     = '4369ed43fe318246caf25796d0b9730937405816fe7f8479c12890110515ec8a'

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
