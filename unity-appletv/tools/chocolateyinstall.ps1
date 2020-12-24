$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/270dd8c3da1c/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.2.1f1.exe'
$checksum64     = '0af5dd73f38e10fd32defa1c7802b186e93228bacfefc346e6303313d5860418'

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
