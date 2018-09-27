$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/674aa5a67ed5/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.2.10f1.exe'
$checksum64     = 'c687431dec15e245896c76a1ff66efb9ac1995ccce86e0b06b5eecd5d467a269'

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
