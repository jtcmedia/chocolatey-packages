$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/602ecdbb2fb0/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.2.19f1.exe'
$checksum64     = 'e4901363a4d2761937fb4612381cc3931742c0804ea89b05a639aa58543baaaa'

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
