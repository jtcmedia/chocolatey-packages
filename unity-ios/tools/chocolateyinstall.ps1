$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c93c5d3acf5b/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.2.2f1.exe'
$checksum64     = 'f653ff332bfb1e53b8d3a98ccb5fac2badf30278124229e79634b3387730519d'

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
