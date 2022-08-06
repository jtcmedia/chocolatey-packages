$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/916d9c03b898/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.12f1.exe'
$checksum64     = 'd91736291c99aa8a634fc57c0b2a91d9f902b01c2efad24a8d43e8cbbb59ae67'

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
