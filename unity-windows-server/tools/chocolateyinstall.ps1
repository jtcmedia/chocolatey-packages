$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7a2fa5d8d101/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.3.38f1.exe'
$checksum64     = '73b2b4ad6b032f70f47ea1087f193b11634fe7f4ece9a450d96c05e09eaa3f00'

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
