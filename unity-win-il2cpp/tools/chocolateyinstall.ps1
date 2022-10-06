$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2fd7b40534d1/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.1.19f1.exe'
$checksum64     = '9550df9eed5e6d79bed1f0b4e37878369eb51e10ae8e54c35f117ccb3ef5f100'

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
