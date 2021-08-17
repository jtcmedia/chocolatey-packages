$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/03b40fe07a36/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.1.17f1.exe'
$checksum64     = 'eca3c375c3f43f2b3aaaa224ebbf8d37b3c5a045e3552d5397e65d70c5e3c796'

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
