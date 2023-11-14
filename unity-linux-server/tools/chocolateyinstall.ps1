$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/35a524b12060/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.1.20f1.exe'
$checksum64     = '0d8fdb85113b9b1488a80988254bd6204f0a93872cba85bb2e5737007741bd02'

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
