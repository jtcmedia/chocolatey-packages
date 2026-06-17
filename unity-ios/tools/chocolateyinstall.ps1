$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5ebeb53e4c07/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.3.18f1.exe'
$checksum64     = '1080a1953b56da46b3529fe04e287280cef7d888df5815c845b7a27cb98765ad'

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
