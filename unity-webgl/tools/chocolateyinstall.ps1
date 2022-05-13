$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/369b620af41c/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.1.0f1.exe'
$checksum64     = 'dc86043efc9008aa64a541b2c02d88d92babd380e5ca6c0c170e69011bc7680f'

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
