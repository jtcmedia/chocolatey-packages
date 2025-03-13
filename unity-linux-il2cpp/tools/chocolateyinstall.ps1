$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5f63fdee6d95/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.60f1.exe'
$checksum64     = '2588ebacaa23f1ab4e1e167cd408396fbc313d891c66b78a881030bf54d4b42f'

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
