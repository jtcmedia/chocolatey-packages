$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f7f8ed4d1e24/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.6.0f1.exe'
$checksum64     = '932dd2cd5c079630d73f9ff2cecbff7fa0ca226270eb4cdc919657bf861d9971'

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
