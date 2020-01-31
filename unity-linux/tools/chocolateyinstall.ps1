$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/27ab2135bccf/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2019.3.0f6.exe'
$checksum64     = 'fd8b5b42da3b11910a45915935705cf93248c64d84d95c426d7db895129ff243'

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
