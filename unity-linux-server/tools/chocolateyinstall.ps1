$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a56f230f6470/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.3.16f1.exe'
$checksum64     = 'fd2ce91bb974ee91e53e6b5de665120c8c2f551dd08de6393e23febe448a6257'

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
