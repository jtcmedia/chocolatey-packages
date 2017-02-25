$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/3829d7f588f3/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-5.5.2f1.exe'
$checksum       = 'f6713c28a56912d2598c3a12fa9bccba1823553e2421b549d33a1c252f7c17d6'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
