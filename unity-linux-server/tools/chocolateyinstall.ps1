$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/95e1b8cf7a6b/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.17f1.exe'
$checksum64     = '119cde0bfc6222cd48146b5e380026f590a66f165355bba3322095a6c7ae0d36'

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
