$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/df4e529d20d3/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.53f1.exe'
$checksum64     = 'b8d20216e5efe22e7cb333b70e7191e9c30a7bb13e0fb2b1f383366b72cd4337'

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
