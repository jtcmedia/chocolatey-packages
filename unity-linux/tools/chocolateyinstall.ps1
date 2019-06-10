$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6f1140cf2297/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2019.1.5f1.exe'
$checksum64     = '972b936f60a9979485bb0efb078cee97f9dd84fd697d97f2ad28889012e7d6fd'

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
