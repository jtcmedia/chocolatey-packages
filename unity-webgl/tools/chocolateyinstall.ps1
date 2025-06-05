$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eb7dd46c99ad/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.2.0b4.exe'
$checksum64     = 'adb5029d77c92ea855f14ed38d67f2c08080778cdb4a1043916401c241e677a7'

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
