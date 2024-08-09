$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e12ab2d6a089/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.14f1.exe'
$checksum64     = '6373ec31a6c50137a9eedb0f399952bce23c4d6936305860d5d587f5c1db983b'

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
