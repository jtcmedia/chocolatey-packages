$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b57deb96f08d/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.5.9f1.exe'
$checksum64     = '0761214eca8709674f62e3d047e63f3c3607b8fc5eadd5678205228c659f1d21'

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
