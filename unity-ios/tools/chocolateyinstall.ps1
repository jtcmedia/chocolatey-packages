$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f34db9734971/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.1.3f1.exe'
$checksum64     = 'addf37d68768f6db0c00174b8d888dacfc45725f061d37212652f2ac27877a89'

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
