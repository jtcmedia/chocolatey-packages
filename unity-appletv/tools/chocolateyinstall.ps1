$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/240f4c1f462c/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.1.7f1.exe'
$checksum64     = '0e8bf505a060e1c3a89b3a825b2217bd7d17d795aa3c02ff77cc9113dd9c4844'

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
