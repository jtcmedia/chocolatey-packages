$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d3d30d158480/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.2.10f1.exe'
$checksum64     = '1eca6060dbb80ce14ee3ceef1cb7cc5211e29204f9fa9068010f6c5d45efed59'

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
