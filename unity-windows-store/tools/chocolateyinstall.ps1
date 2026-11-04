$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/237b6593792b/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.6.8f1.exe'
$checksum64     = '74a985dd8249bae36a9d3107c19360c8242f80d712f21731049e46b734ab7738'

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
