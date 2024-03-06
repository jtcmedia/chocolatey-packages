$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/19eeb3b320af/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.2.12f1.exe'
$checksum64     = '5bbd11de32bd41b97423be4c3229d86550b2bcb5c67156f3b1bc3a05da21fedc'

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
