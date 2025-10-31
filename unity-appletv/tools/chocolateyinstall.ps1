$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/74a0adb02c31/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.61f1.exe'
$checksum64     = '4ad38802a5471f7932e65c700ba9a33b687d093b4b3ae330e4240358c0c49af7'

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
