$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2d349551e475/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.1.17f1.exe'
$checksum64     = '66d3655e5e26cf18061f66d7c34db5f83a8ce696488637f9d96db4256a61ac9b'

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
