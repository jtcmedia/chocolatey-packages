$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/bcebec703747/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.2.10f1.exe'
$checksum64     = '4da6c7ddb25cdc0c58ee20d9e6dafa1adff8d2cf8920ca042a1e6614a2de7e89'

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
