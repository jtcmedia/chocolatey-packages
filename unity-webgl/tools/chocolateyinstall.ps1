$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/42973686a05c/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.1.15f1.exe'
$checksum64     = 'dbecacde89b69c1aee1d4665b52a2ffdd556538e4c7598c173941db26bf8c1c9'

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
