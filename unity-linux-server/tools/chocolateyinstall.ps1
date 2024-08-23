$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/85497d293fa1/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.43f1.exe'
$checksum64     = 'cf8df8bf58ddbe37c7d53aedddc322f806d3526ec80242a35476d70efa394ba0'

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
