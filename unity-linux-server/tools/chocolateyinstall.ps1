$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/22856944e6d2/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.1.13f1.exe'
$checksum64     = '1dac6aec425f1b42205574ed090cc30e1dc17788ef9a8b469b3ab8b8a0d735af'

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
