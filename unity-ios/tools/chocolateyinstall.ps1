$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5ef4f5b5e2d4/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.3.47f1.exe'
$checksum64     = 'b57e84e2efda665a66f21e360428ceb935e114b3cbb245be782eaaf0be21e579'

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
