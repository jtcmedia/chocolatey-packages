$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3b8567f665bb/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.2.15f1.exe'
$checksum64     = 'e4a99b0cc0d19de4ab570c15c2b8b64f1ea23b619a6eeafd6e05c962ac030d13'

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
