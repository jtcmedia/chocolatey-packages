$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7efac9f6c10e/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.6.1f1.exe'
$checksum64     = 'fb91dc7358bd78c41d86215b378ce92d9b45c27b60eec272c6e46d003fa1de24'

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
