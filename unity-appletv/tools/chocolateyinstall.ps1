$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ca3ffb99bcc6/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.27f1.exe'
$checksum64     = '69b515e753856e3af60c4763722e09658d883cc31bb1917d6e265c275a90bf46'

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
