$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1120fcb54228/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.52f1.exe'
$checksum64     = 'e56b88c34cd87ef120d0763a9e8ae6cd57e82bd38f02d792f66011adf4e04a0a'

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
