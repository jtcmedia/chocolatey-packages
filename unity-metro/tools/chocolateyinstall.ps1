$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/c18cef34cbcd/TargetSupportInstaller/UnitySetup-UWP-.NET-Support-for-Editor-2018.2.2f1.exe'
$checksum64     = '85f92958a0ef62bb5809ee42fdd5c1ce522e9bba910a57ba100ea96c9ab37e54'

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
