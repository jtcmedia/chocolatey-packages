$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/59ff3e03856d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.3.15f1.exe'
$checksum64     = '089e9db84e6c1674c294729fedcd1a7740c1de09211633a4bc2ecd8e2449e023'

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
