$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b9898e2d04a4/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.2.16f1.exe'
$checksum64     = '717be443880856263177fd88300e1a6362115b47d488a09607097a2bfe5afd46'

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
