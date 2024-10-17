$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0da89fac8e79/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.45f1.exe'
$checksum64     = '0ea34383d10e03fe78e7630db9b95c081afedd2c60cc560a7f1485f6da49738d'

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
