$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8af3c3e441b1/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.12f1.exe'
$checksum64     = '9c092ee0d7cb04e2c21070ead2c1ffe074bfc67a83867fe5fc11ec8aeb0c2213'

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
