$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/db7aa045cc2c/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.1.14f1.exe'
$checksum64     = 'aee6278fb705ae9728d502d0c14499ca4aedaa6eb070f46e5b9f2dc4fd1c5713'

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
