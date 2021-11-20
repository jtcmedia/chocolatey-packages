$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/32358a8527b4/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.2.3f1.exe'
$checksum64     = '1416ef5d380c18fa9819423e8e06720520bb5a5b64696ccfae1fd7ccb3d90ec6'

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
