$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b30333d56e81/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.8f1.exe'
$checksum64     = '93f850d943bf57810551d130352ee86c442d0f41f7d0d9116b9a8724e509b56f'

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
