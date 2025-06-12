$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c1cd6601d4c1/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.2.0b5.exe'
$checksum64     = 'c77eb5ba758e507a76cd381ab48045b7db676bd01c33b2b8007eec453ec14cd7'

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
