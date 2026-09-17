$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7efac9f6c10e/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.6.1f1.exe'
$checksum64     = '21bbb50c407c93aa7f43ff2c9debc96dd766ac1bbdd8f89e36b5737c7fc56a15'

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
