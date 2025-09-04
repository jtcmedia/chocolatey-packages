$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b7b9860b7bbd/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.57f1.exe'
$checksum64     = '0609421db5dc939ca68a86ebd5d2ee953f81706655ca069cfe4c0bfc07e4355b'

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
