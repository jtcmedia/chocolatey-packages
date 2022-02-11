$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e50cafbb4399/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.2.11f1.exe'
$checksum64     = 'dbf790e6cefc838686622424d83b7cc16a0b5489b68b5d7752d379801e48b9fd'

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
