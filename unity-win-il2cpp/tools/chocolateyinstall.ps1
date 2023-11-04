$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3b9dae9532f5/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.32f1.exe'
$checksum64     = 'c5ee6d71e8232ed1f3dd5d7075b4418a2018e87ca5f7033ad799c4c62bd2d5f1'

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
