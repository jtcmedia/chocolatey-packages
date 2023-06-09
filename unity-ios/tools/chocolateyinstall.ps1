$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f18e0c1b5784/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.1f1.exe'
$checksum64     = '6ee712c165e9dfb39c068670700badc55008a964bd95fd914f3106d6a2d107e5'

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
