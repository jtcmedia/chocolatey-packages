$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f7258d6eebbe/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.4.9f1.exe'
$checksum64     = '3f4d94e9e3e9e1dde0ef0672ecc1a2350ba9367e8a8429487b0b2d79207a39de'

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
