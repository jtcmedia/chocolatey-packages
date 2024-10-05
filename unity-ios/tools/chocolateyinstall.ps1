$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/001fa5a8e29a/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.22f1.exe'
$checksum64     = '9e38e22e81a33c7c881d9dff8cb77277932bdaab1732001dfb569454e8bee326'

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
