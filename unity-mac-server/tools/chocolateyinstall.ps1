$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4e1b0f82c39a/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.39f1.exe'
$checksum64     = '8adafad43bd08089722c420e7eacada8f3688f557ef95b8e813ecec15d64676c'

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
