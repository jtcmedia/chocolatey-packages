$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0ca0f5646614/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2019.1.5f1.exe'
$checksum64     = '4cbfabf9cf632d0be16abf363d292dd8e3832e308db35239e7252cc6ada04e46'

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
