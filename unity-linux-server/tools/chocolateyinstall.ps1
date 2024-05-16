$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d9cf669c6271/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.1f1.exe'
$checksum64     = '5b191719f0621eccfaa6490158f7de43238aebd4390bf8df1cda54b291c343b5'

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
