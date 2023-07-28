$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/964b2488c462/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.1.6f1.exe'
$checksum64     = '0a63555fe9e6e4bc480e564344066e6268154f38120ce9c2fbc560c5fd5f5075'

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
