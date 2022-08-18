$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8f5fde82e2dc/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.3.38f1.exe'
$checksum64     = 'd095f09392ecebfe3c42c38fe7c3cfdfa547dea8f0e3d5fbede766185eb3ab2b'

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
