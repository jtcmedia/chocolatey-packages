$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4504a57e80f0/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.2.0b3.exe'
$checksum64     = '198cf81e51cd52b838b7f3c42cb951df9b5da8c7b0e911a431014bc99dacac17'

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
