$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2ad1ed33fd3b/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.47f1.exe'
$checksum64     = '9aac28d142fb8185a1876227922ed46ebb94eed8a5937cd92293aa243492d3dd'

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
