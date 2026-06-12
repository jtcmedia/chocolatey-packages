$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b0a1d6caadd2/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.4.11f1.exe'
$checksum64     = 'a92ec024414fe0406a66b8d18135afb3ec248b5c47eddbcfe7c0095ba7bf490f'

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
