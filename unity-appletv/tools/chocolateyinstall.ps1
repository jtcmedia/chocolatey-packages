$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fc0fe30d6d91/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2018.3.8f1.exe'
$checksum64     = '296a86a4d190093eb64e33778279dd9b944355a8c39fb0c8114c0f7bfc1cacf7'

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
