$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ccb7c73d2c02/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.26f1.exe'
$checksum64     = 'e65ea1492ebf559662e82ac94ddfc7274554eb238bc160826763707f026bf6f6'

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
