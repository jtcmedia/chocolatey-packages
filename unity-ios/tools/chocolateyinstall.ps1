$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/20c1667945cf/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.2.0f1.exe'
$checksum64     = '7751c7a3185e75506649448172d703fd2c2f96b2c804f5d0de9b772de4f1fa25'

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
