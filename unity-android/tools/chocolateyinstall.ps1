$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a3bb09f8c8c4/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2023.2.8f1.exe'
$checksum64     = 'f8054100af8dab08d69d36a4ff5e7e142122384eb74788b3f7537be19d198e8a'

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
