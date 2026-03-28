$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c1f81ff5b082/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.5.0b1.exe'
$checksum64     = '061d80418302020e2efa3c9d0993d449420c2f4439bfa5bd3ac9208ddfb4262a'

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
