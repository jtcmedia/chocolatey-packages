$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d5f1b37da199/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.1.9f1.exe'
$checksum64     = 'd2cb582c20417941ee84a6b3acca7f01b9c81cc64d6107706fb01c43a33c3532'

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
