$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/85497d293fa1/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.43f1.exe'
$checksum64     = 'e5ce723622f325ce2286223cb60032900ef84ee7355d941b5d60853d99e0e058'

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
