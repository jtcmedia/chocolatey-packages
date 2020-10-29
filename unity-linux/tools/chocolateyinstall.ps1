$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/698c1113cef0/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.1.11f1.exe'
$checksum64     = '2e2f00d4faa4201883d1746b7f29127a22f7a8b43f67a3899766ea906f829dfd'

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
