$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/53a692e3fca9/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.13f1.exe'
$checksum64     = '7b3a6af68c8db37a59b4a49a17680b341578b89d1c9edeeb11ee82f683cb8b53'

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
