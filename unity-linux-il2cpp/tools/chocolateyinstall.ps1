$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/244b723c30a6/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.19f1.exe'
$checksum64     = '8c221e4a5c30073ec3237ee4e4c27b953b641f8f9702ff5d4ceb0c5879172a76'

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
