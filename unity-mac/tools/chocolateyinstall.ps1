$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c9714fde33b6/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.19f1.exe'
$checksum64     = 'b656ea2cf8c7aa4015480bc86d1e56b0dd3217e0af828504b481f1b8a89209cb'

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
