$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5e24f28bfbc0/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.1.13f1.exe'
$checksum64     = 'adc142eea1829e940d71a4373195f61711f91e4711846ffbfedfbe79f3d40a79'

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
