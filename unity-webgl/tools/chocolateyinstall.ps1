$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/2ab9c4179772/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.1.0f1.exe'
$checksum64     = 'b89f7f048ccc8ea7f9f88c58e16c78c1dc73ce94bdf7ae9359181a46f70cd836'

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
