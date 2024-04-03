$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7f45223012db/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.2.16f1.exe'
$checksum64     = 'f9b158a7bd5b1f3c955fc9ee2fc595a343606a0afcd67b690b6661140a2da4a7'

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
