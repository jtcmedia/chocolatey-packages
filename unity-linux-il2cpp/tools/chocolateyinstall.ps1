$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a137e5fb0427/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.22f1.exe'
$checksum64     = '0957c038dd7e4f87ab068f42ea4ffe939678e3b2c0227d4bca1272243efe2acf'

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
