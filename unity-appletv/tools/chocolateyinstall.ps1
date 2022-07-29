$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/24e8595d6d43/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.7f1.exe'
$checksum64     = '96522cfcfec0729b252bdd3b53a55737121f69d95c907178855c4b9fb94dd29d'

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
