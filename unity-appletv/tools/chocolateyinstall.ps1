$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/afcadd793de6/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.1.12f1.exe'
$checksum64     = '4c42cb2f4555fe0506fee124a5427f16a405ade67895c5726bbbf2fb23fb7112'

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
