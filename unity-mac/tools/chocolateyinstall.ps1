$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/8e603399ca02/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.2.17f1.exe'
$checksum64     = '3c0a796b440a3ca8a2bc7c562d16c6680cc2101560be9b679303a90cf1c79b0c'

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
