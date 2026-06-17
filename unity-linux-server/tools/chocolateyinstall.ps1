$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/88b47c5e7076/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.5.0f1.exe'
$checksum64     = '04e0b37bb7872c2b23963633fc6299182b56f7966527b259c8fa33467bc389b3'

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
