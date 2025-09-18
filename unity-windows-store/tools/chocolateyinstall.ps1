$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/43d04cd1df69/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.2.5f1.exe'
$checksum64     = 'fa1d169b1c46c8952ea05c412d1f9eb6e1b25d9d26f0ad6e5c15960eda10c84e'

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
