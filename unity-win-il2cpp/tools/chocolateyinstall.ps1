$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/996aee41dc57/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.8f1.exe'
$checksum64     = 'c1de1101be0fb4fcb07b3da402d8d66c49d4f104b5275e658d1148355abb6bd3'

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
