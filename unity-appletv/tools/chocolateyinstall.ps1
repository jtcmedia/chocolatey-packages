$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5063218e4ab8/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2018.3.11f1.exe'
$checksum64     = '93d5e90299e85ddc01c055bbfffa742c6c56556f21173c8cf1923b24d9c07621'

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
