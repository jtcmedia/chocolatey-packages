$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/77a89f25062f/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.3.1f1.exe'
$checksum64     = '00b0b3af113781a69899b9244970389ec9f2d8b62e0e8785b5a23e9e91a4abf5'

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
