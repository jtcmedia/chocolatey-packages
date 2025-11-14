$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e89d5df0e333/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.2.12f1.exe'
$checksum64     = 'b593158166fce7dde0dbfb53b931dade6fe5bed52a5597f6f4d893c94663c1f7'

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
