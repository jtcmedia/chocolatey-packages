$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eff2de9070d8/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.14f1.exe'
$checksum64     = 'ef953a3a4435a0d96f76a1855256b635c637c5d563a10881ac75a0cc12d785b7'

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
