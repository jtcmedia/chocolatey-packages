$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c1aa84e375f6/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.3.15f1.exe'
$checksum64     = '7dc778574667db88ac48c0dab9924751a8e31ba9e379b9d8839cfb882e0e72f9'

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
