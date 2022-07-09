$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7da38d85baf6/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.6f1.exe'
$checksum64     = '04dc8924f2930f9b1b3265966313defa46dc40c635ec9bd30d5a6c371af2a9b1'

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
