$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ae37dbaefed8/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.16f1.exe'
$checksum64     = '7d00effbf996e66085eec5989c88a7b56fb78eb73205105963fefd7dc93cd9df'

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
