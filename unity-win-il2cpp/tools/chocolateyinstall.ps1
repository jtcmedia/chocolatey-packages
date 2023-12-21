$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d2c21f0ef2f1/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.16f1.exe'
$checksum64     = '5ee314e1ff6381a90131e221ee42831a242ec386c4ffbce3cdcfeb1a6afeb66e'

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
