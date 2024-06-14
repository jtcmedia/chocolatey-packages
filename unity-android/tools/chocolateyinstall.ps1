$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fb3b7b32f191/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.3.39f1.exe'
$checksum64     = '23840b968e046018d813a1a5c74b952e5ae5fb081c7f139c450f8cb183ce85c9'

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
