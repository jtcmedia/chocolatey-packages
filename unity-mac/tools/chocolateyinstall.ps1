$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a03098edbbe0/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.1.13f1.exe'
$checksum64     = '42a37faf2ac0167c6ac6491b4de3240028841b20be164ae43536207d3aff7611'

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
