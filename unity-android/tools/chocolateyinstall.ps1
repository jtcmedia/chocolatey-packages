$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3ca267ce8005/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.4.12f1.exe'
$checksum64     = 'd0bc885e33236f96b6a8cdd74ee141c4488db8d449f5e3e4f5d880dab848f8ab'

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
