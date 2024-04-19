$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/530ae0ba3889/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.25f1.exe'
$checksum64     = '3b12c96ec8071ad1280a8fe5be1f1b08dfbb727079fc61beb3284f1c09598010'

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
