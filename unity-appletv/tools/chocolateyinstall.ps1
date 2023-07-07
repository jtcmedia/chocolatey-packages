$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e00e24c187a5/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.1.3f1.exe'
$checksum64     = 'c54a806a37ba8c1f2cc0c5281799d3cb6ac0523dbc2bca2047659ab54cf046a0'

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
