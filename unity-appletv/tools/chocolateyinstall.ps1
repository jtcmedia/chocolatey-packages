$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/439913089442/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.2.0b6.exe'
$checksum64     = '53394df0bcd0855006acac65e98c68684bd98d947f221ab3f1b319a94a14f307'

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
