$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/03270eb687c6/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.1.4f1.exe'
$checksum64     = '167403191bb6ac1755bb1a69e93787e6df618429c70255edf50e45456543ff56'

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
