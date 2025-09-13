$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/17550c9bb584/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.2.4f1.exe'
$checksum64     = 'aa877a3efe78406076c8953445e6c419ad49c2d38ea96590828985fcce36d713'

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
