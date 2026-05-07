$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c8c45dd2de2f/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.5.0b7.exe'
$checksum64     = '28e1c74b1017fafcdbde2dd464aef443c53b1179afd34b5e06f69c936d561a96'

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
