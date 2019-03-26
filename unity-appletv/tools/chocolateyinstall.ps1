$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f88de2c96e63/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2018.3.10f1.exe'
$checksum64     = '6017b79123b56567896dfc3b8aa9d059a17be13cc34e5f4f052d7d9e4dfaeee5'

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
