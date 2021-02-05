$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8ff31bc5bf5b/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.2.3f1.exe'
$checksum64     = '10dd99583152b215bad8904a0ddeb27a077258ef57cb4e2e8fa5dbde20b2ded7'

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
