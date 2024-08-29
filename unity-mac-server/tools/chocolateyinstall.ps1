$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c3ae09b9f03c/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.44f1.exe'
$checksum64     = 'a04dc8a696e657ee8d3ae43b19aff064e2b7ae008c725808dc5018cd359afff8'

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
