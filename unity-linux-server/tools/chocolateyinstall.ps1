$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5cb7df797b7d/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.5.8f1.exe'
$checksum64     = 'f01b423d1bb646519425ed4d0bdeb78f366c2e92ce864ef444394f77cd7ae37c'

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
