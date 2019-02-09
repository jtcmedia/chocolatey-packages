$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/76b3e37670a4/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2018.3.5f1.exe'
$checksum64     = 'ee162c8addbfc0f38bc08592d3877214eeca1ef7e451a3e651732a56ea1fc2f2'

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
