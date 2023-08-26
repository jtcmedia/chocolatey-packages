$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/661833f8c66c/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.1.10f1.exe'
$checksum64     = 'd8ed08b1ccb82e8ce22b334e1dffc6244a428e43e0ca33dbe008356c141b5833'

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
