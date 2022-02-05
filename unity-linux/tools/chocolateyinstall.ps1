$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ee872746220e/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.2.10f1.exe'
$checksum64     = 'b344c3e3c29425f45a1b65debbb920299b05548ca697164d53b97150a77b820a'

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
