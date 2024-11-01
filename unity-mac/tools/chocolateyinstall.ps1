$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4859ab7b5a49/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.25f1.exe'
$checksum64     = 'ceef0f7d5b837526ef6e1bce5075d72b74b7fc20855eab26a40e706667262f8c'

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
