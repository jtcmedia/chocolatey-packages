$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0d9463e84828/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.5.1f1.exe'
$checksum64     = 'cd155216e0b3b5bc94f7c9d8ab8313ec241ce35c558923b83d2a3add4b05cb57'

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
