$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e5ad54273a6f/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.1.16f1.exe'
$checksum64     = '5c8a57a6284faf7df397ff6226e4574540b3d5ae9b90b9ff75176bcdac5adb0a'

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
