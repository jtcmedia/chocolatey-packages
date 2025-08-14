$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eed1c594c913/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.2.0f1.exe'
$checksum64     = 'c84a9be8fc418427dcb3bf49c6e9bdc0705dd648ac075c17bb3539f7a776fcc0'

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
