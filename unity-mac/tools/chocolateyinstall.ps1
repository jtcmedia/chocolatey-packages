$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b3c100a4b73a/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.3.2f1.exe'
$checksum64     = 'c266be4caec57066874def3c232e6182151c22adacab1d2571fb02b60d9af2d6'

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
