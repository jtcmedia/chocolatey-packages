$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2b639e48c919/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.1.18f1.exe'
$checksum64     = 'e5301ad552508b192e855014463cf06228531e48a0ff173723ea32118905772d'

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
