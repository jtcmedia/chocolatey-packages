$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/765657fe9343/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.2.19f1.exe'
$checksum64     = 'ebd09c836f7374e9ae3475ca3be88953637f38b27a04039185f9c2b6e39ddc51'

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
