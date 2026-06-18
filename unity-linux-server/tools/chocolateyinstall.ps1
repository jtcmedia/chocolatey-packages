$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3ca267ce8005/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.4.12f1.exe'
$checksum64     = 'f02e62992403703c6ea39e31e76b218edef80d6538db76db5b7fe66dd2f79cde'

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
