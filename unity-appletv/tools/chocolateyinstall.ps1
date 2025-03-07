$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/249fe0a196c2/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.2.0a6.exe'
$checksum64     = 'ebe35cca9802ab95cf26385cff5ad11e060fd0e4f0d8ac63c3979b57056021aa'

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
