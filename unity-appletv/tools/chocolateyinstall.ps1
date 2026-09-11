$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4e7b9b5b6244/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.3.24f1.exe'
$checksum64     = '7894be9d2491019025792066243197d2b49a630f73ea59bc5c8ec84933982548'

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
