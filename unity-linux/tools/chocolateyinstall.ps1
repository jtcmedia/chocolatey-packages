$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5d30cf096e79/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2017.1.1f1.exe'
$checksum64     = 'd965eac511058ab65b38f6f4d3f88151bbcca8f60257ecffa6dca079e7d36c02'

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
