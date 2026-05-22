$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/342347f1f18f/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.5.0b9.exe'
$checksum64     = 'ca72952aae64c4111a5227193d798448a927ae743b3a86c08433828263cd9a6e'

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
