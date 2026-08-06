$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/017862109af0/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.5.7f1.exe'
$checksum64     = '4f7b27c8e2201c1cca1d89b5c067ca1a8e5e93224a6cdfe565b129cea70f3944'

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
