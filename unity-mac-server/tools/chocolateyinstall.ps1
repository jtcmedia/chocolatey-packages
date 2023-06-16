$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a008fa768e6c/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.1.0f1.exe'
$checksum64     = '9356a242b14552fe2d811ad3d01c91d1056e88435496a9c54ecd9560d22f5de9'

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
