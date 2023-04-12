$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b2c9b1ac6cc0/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.2.14f1.exe'
$checksum64     = 'a66bb5c553b3112208779f056e5f7940464e8ee3150f178762a8335308377ae4'

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
