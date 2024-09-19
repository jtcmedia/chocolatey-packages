$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/88c277b85d21/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.47f1.exe'
$checksum64     = 'abfea6329d11bcfbb369fd036c813b76ed433ee8c2c6f7d30eec1330eb217806'

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
