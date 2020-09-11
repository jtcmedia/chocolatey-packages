$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e025938fdedc/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.1.5f1.exe'
$checksum64     = '750f75413119bc55f3b653459a4a0ec78732fdb5b2ebb1b4d182feaeef4d305f'

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
