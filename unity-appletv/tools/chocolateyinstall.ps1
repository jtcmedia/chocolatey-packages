$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/1120fcb54228/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.52f1.exe'
$checksum64     = '3209e1f26e2756173eadfa05aa48fd283f6a0563e883edb08bb6d7856b56fd77'

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
