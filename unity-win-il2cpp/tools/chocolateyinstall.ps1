$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/22856944e6d2/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.1.13f1.exe'
$checksum64     = '0b657580da43552bed580d3ec5ab6d6e175cdda6e4454a8e8a6b4419d9d09f23'

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
