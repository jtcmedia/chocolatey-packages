$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fa01dd6b76d5/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.11f1.exe'
$checksum64     = 'adbdc0d3a39614e3569475ce19e3b01589000c997c8771912cc73a6c44a5dbed'

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
