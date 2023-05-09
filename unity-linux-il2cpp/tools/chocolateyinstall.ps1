$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5ebc6493a86f/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.2.18f1.exe'
$checksum64     = 'c30310ebb7211ebc475abd18b07e7940ba783751903b38100465410a0f71dac3'

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
