$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f007ed779b7a/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.1.10f1.exe'
$checksum64     = 'ebc087dd0452cc02ce04be088851b03458a1c203d5c573f3c2b3c0911bb5fc4e'

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
