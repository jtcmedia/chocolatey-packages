$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d0e5f0a7b06a/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.2.8f1.exe'
$checksum64     = '6c0a409fb9af426b6a481ffc938a61ed68f01434d36619c26f2b846ed6102afb'

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
