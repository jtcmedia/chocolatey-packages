$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/068178b99f32/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.2.2f1.exe'
$checksum64     = '3504226b74e5d75eab7dabb317525f6a0ec875b76007840deb921cb738d1dd0b'

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
