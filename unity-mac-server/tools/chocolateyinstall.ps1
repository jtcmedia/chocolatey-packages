$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/45d8eee7de74/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.6.3f1.exe'
$checksum64     = '9a62948dd467737db69008f658953ad2e5e55782ded99b5255fe614e0971ea87'

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
