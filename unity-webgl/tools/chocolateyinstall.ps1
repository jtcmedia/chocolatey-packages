$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b0a1d6caadd2/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.4.11f1.exe'
$checksum64     = 'f8b7b41044779c28d9603712ed3cea21ff4c28d91f8d339a869a28f9b4aa124b'

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
