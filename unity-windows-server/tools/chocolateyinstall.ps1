$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2fd7b40534d1/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.1.19f1.exe'
$checksum64     = '4b3378ee972180525d34a0cb6c475bc74172abad101b96d45acd175d5bdbb311'

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
