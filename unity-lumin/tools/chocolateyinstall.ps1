$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/99ba6aa4c552/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.2.4f1.exe'
$checksum64     = 'd7e63b7aa18235148ddba052b1ec3996d593b3bd1e4bccfcd1e453c138a416fd'

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
