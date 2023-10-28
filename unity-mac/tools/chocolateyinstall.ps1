$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4fe6e059c7ef/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.12f1.exe'
$checksum64     = '6156df5797edb2cf76a6661c9fca537c8784a21629891f1d21e6b5780e1a49fc'

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
