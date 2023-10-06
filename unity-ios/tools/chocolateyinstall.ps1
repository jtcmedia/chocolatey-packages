$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e5ad54273a6f/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.1.16f1.exe'
$checksum64     = '7b39956baf1cc52d17e4123b169443ba19bee673a7b76cde99043490f61eb14e'

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
