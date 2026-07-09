$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cf7ddae6c717/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.6.0b3.exe'
$checksum64     = '7c9a63b388292a9ef4519de58fb802d2289536352c25380cd714206e83d520b3'

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
