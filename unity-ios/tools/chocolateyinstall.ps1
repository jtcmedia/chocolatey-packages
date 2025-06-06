$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d64b1a599cad/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.1.6f1.exe'
$checksum64     = '5992dd447152d795b590cf283c6ac266fe0ddf9db37aa535c0d68765839aec1f'

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
