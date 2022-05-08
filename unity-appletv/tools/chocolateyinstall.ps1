$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d6360bedb9a0/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.2f1.exe'
$checksum64     = '58888dd8d82ff6bab8d87157f58012b694f8c19aba1b0be35b534dd0b9a022c0'

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
