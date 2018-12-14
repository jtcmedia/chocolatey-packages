$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6e9a27477296/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.3.0f2.exe'
$checksum64     = '98edd9999a246a10d63154c4f46ab4a03fdf437e313875c3ebfaf41274d1a64a'

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
