$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6f076387c01d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.1.26f1.exe'
$checksum64     = 'cad7fbdb0927898d166d981eb1a6e4ee05389bbead4e03e083bbe680dc1b3435'

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
