$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ab112815d860/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.2.2f1.exe'
$checksum64     = '42e44ce2975c4b128c4e1ad168fac739aaceb82ffbaa2d9adaf1864dfbe548ef'

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
