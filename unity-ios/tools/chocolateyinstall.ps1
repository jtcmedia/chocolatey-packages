$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/3071d1717b71/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2018.2.5f1.exe'
$checksum64     = '118206675fde58221a9b4834e76a0969c0a12ad13d9cd66951632b3446b43540'

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
