$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b15f561b2cef/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.1.10f1.exe'
$checksum64     = 'd07525fae459f3ba2e489e1de049ed8fccf16c488e594679dd317b90d55b153a'

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
