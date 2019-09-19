$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fe82a0e88406/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.2.6f1.exe'
$checksum64     = '69f58b4e6c95fdeec58636c010c4b9e24a8c467eb5ebf1b2d331fbfe03e46da9'

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
