$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5f5eb8bbdc25/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.1.19f1.exe'
$checksum64     = '041d6b9a07d544db91b4c50958afdda68b2a57e7ba54c99e576ecf15ddc7201e'

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
