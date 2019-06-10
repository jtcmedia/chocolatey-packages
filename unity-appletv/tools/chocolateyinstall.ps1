$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0ca0f5646614/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.1.5f1.exe'
$checksum64     = 'b69a16706fee3748f5efdc442e735114beabaaeec989fffcef27796362b96005'

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
