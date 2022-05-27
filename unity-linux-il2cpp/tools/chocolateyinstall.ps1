$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9427c1534183/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.1.2f1.exe'
$checksum64     = '29adb26fd1e6757cabe3b516b6447a6ef5a0986c4aa847d13966155764906d86'

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
