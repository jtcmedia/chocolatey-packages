$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/accd6d46ced1/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.2.4f1.exe'
$checksum64     = '70f270a0180c7e5c616d8a1cd611c9ea79d980def5d660cb4d6a7e4f2d85c538'

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
