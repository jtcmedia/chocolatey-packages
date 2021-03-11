$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c7b5465681fb/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.3.0f1.exe'
$checksum64     = '7de5851006ce23a8e80bd683d7d13ca9213882bda7378c8c6adf450fa4584dcc'

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
