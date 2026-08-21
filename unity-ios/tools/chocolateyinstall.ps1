$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a9845a6430b3/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.6.0b9.exe'
$checksum64     = '00d1888dc1359345430b2aa0e1d1bfd95281f3ab9fbfc36bfbd4366ca4b25e64'

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
