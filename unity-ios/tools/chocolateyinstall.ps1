$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f3c4928e5742/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.1.7f1.exe'
$checksum64     = '27b79e85294182a06b616d216904c48bbaefb8a088b89c091a8d4a37fd2902b2'

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
