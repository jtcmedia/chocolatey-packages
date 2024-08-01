$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/cbdda657d2f0/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.40f1.exe'
$checksum64     = '5aa97594179251e5dda015a17ab03bd9d310e7ea08790a9724730c48c19907a7'

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
