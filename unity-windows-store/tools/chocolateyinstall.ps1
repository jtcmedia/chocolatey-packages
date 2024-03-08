$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7a0645017be0/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.3.36f1.exe'
$checksum64     = '0f95c5ebc41f0bd30cfb2fb6bd33e62d4e2000a90bf100a784bfe2fd448cd093'

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
