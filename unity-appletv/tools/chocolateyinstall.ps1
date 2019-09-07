$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c63b2af89a85/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.2.4f1.exe'
$checksum64     = 'd0191fe4335ac46d9baf2b6aed57483e66947967eac8a1f9a5d75860a77b227d'

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
