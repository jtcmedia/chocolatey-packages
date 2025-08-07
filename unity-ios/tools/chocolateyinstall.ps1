$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/faa32412f6c9/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.1.15f1.exe'
$checksum64     = 'f77a4aea0a870f6aff9f5c4ff5ca125dfdd49284068c3e706c8fd9d0857c1f72'

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
