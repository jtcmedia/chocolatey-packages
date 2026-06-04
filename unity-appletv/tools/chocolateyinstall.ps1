$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/feeafc12a938/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.4.10f1.exe'
$checksum64     = '5486d0e5a7635f8e35619001496fff031e5130c1efa4336f44ea71377e6477de'

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
