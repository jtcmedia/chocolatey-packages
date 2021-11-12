$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5e2b1e92c7f8/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.2.2f1.exe'
$checksum64     = 'b22e140e0e4d0939a60a2ed21af3dc4fdb1a46d25fdb98162e6e1945d97db407'

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
