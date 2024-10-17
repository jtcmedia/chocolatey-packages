$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0da89fac8e79/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.45f1.exe'
$checksum64     = '1ea4ab67a5582b8a81a3715c7e8741e2123af15743c97e0d7c346b080bcf1ad5'

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
