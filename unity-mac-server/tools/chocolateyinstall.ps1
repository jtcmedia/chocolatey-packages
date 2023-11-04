$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3b9dae9532f5/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.32f1.exe'
$checksum64     = 'c4a4b22bc6965d48865d5b1f48b5d2d377cc4ec6a3ce053a54eb13f497e38b5e'

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
