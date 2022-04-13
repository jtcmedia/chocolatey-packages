$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6eacc8284459/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.0f1.exe'
$checksum64     = 'baa604bfde30926b019852064b7655071927283721d33490b6f7456f21152909'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
