$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2285c3239188/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.1.1f1.exe'
$checksum64     = '07adcd65f485567c236cafd0f97d0bad269fb59e4a205c4265bbb1e74a0044a8'

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
