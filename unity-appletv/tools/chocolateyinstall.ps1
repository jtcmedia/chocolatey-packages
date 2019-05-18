$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/dc414eb9ed43/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.1.3f1.exe'
$checksum64     = '4a62a57f9b8670fb998e13ca9710ce126a8e89408ab5916788da6b8f082b3a11'

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
