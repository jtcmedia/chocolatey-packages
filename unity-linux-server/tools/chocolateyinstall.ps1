$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8331acaee5d3/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.2.7f1.exe'
$checksum64     = '9a4a5c937fb2bb88a52d0bc0752796167b9cf9ad8d0204dad4f99a5834c8bf9d'

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
