$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ebce4d76e6e8/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2019.2.9f1.exe'
$checksum64     = 'e94719a1628232aefdc15bcc71c6fb2d1184e95bed5187b93b90461992f3419d'

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
