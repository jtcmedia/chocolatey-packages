$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b5eafc012955/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.8f1.exe'
$checksum64     = 'f92a37e25d2f427a52f3833c2412f729a2a9d01a39d92984b91baf646841c5a2'

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
