$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1120fcb54228/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.52f1.exe'
$checksum64     = 'a2a40d085ce1e479b66903308958d8e7b8e0e2484b763d33fc2352e0cb55eaa3'

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
