$ErrorActionPreference = 'Stop';

$packageName    = 'unity-samsungtv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/497a0f351392/TargetSupportInstaller/UnitySetup-Samsung-TV-Support-for-Editor-5.6.0f3.exe'
$checksum       = '96c2b0b2f1cd0bd26c8244cef291d390a8d488830f94708f869e825613e24c9c'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
