$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/84b23722532d/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.3.12f1.exe'
$checksum64     = '790bc4863a68feaba28205189cc6afd2a74af51f8326512bf9919ffbc5211fad'

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
