$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a56f230f6470/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.3.16f1.exe'
$checksum64     = 'c13eed14d989e93b9a28913305430a809d6d4121e336bee311af3744dec96e40'

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
