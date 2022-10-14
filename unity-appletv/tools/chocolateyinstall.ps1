$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/01d83b40d570/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.1.20f1.exe'
$checksum64     = '8f31b1e9ff1e829ebe50b6d13d81e7982e50eca9e205b9d867ff6cacf352a23a'

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
