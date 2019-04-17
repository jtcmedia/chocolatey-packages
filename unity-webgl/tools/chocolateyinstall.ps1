$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/292b93d75a2c/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.1.0f2.exe'
$checksum64     = '8a50ecd0729562adbd0c02dc3d1c4640cc20c1c106094ad080cd3102a83dc8d3'

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
