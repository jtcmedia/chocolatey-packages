$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/7ceaae5f7503/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.3.3f1.exe'
$checksum64     = '3a056c4803966555959be86ac7fbdbe00999de190b64efcbff4c6f9fefec86fd'

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
