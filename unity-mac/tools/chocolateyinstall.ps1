$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/afcadd793de6/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.1.12f1.exe'
$checksum64     = 'fd6b97732bb6e500abd3241e8f02cd1ca177f3b3f5c6972dcc0cddea3fc3f0ef'

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
