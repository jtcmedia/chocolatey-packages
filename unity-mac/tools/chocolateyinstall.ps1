$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f99f05b3e950/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.62f1.exe'
$checksum64     = '129db886f8fb8d8a5087d34fc2073f462f32f253acdc82e7ab2d8b77b2dbf0f9'

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
