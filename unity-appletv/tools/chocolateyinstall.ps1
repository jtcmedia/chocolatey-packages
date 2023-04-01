$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b6c551784ba3/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.22f1.exe'
$checksum64     = 'd76afa8fa2313bc8f6764fb4fad5442004dcd59a7e9c8cbeeef38bb8c6173f95'

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
