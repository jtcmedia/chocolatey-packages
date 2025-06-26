$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f57a55ac740d/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.2.0b7.exe'
$checksum64     = 'a4c0ea778f3a75a6e06f2b5836d65ef0bc6d1cf18e1f472551fb37cf57880f61'

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
