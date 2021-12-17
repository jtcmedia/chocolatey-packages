$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6bd9e232123f/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.2.7f1.exe'
$checksum64     = 'f45f3b19f3ebfdfa88a4902b86f46d2fc58df14cb6a2cefcab5be6eb9456fe1e'

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
