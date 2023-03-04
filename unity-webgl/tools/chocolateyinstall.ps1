$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/577897200b8b/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.3.20f1.exe'
$checksum64     = 'c8cce806db5de7a5274ddf97e9e6af2ee2c788b8bcbcd3d0a52e29871b3504f1'

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
