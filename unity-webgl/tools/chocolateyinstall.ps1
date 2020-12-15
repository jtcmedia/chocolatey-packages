$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3721df5a8b28/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.2.0f1.exe'
$checksum64     = '7e06342bba2aa0d5f0a8799caf67ed0490a50375ffe5bdf2dc0e127f6be34a99'

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
