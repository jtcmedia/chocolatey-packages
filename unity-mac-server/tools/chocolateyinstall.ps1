$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/46620eadcc07/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.1.1f1.exe'
$checksum64     = '2e93b2b89406318ed1c5d602ebef00b331ed1bae2fc527b786a8050737aae4cb'

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
