$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/0a46ddfcfad4/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2018.2.12f1.exe'
$checksum64     = 'd8cbcfc690ed00761809f003fdef58fff49ffe72bdeabed7da7a76f0d8e49d59'

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
