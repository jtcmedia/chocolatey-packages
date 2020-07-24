$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/81610f64359c/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.4.5f1.exe'
$checksum64     = 'd66d0db26b64a0249bebdc9f7f7dc1a6bad8e64b92662429b22f2618547f65f9'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
