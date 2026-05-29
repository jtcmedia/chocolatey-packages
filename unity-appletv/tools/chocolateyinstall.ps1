$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f7258d6eebbe/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.4.9f1.exe'
$checksum64     = 'b35bbeac8b58fd63bd2f2505cd236c2f90003d9234cc809145ac7a64408587f5'

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
