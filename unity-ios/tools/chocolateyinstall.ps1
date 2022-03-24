$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/12f8b0834f07/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.3.32f1.exe'
$checksum64     = 'fd0b7756409a265333054454078ef4d5f17a65763f0403551f06e89276de1253'

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
