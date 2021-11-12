$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5e2b1e92c7f8/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.2.2f1.exe'
$checksum64     = '3ae6c74e806887463403cb1a13376870eb111e8a504e7823e480fb73d469f6c1'

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
