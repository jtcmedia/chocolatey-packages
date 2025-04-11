$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6c53ebaf375d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.61f1.exe'
$checksum64     = 'f467e22476feaa97038c6e685b4d85432c45fcda95ed0ea704802187c14f896f'

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
