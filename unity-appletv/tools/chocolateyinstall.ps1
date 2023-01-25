$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/55531d7fa82e/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.2.3f1.exe'
$checksum64     = '66d8dc40b39e900dcb9fe6e662890f6461cb17e6c873b20140c004fb1ee5d498'

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
