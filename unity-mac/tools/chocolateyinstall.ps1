$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8e55c27a4621/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.2.3f1.exe'
$checksum64     = '2b52ab0b1252fd875b145b33b208afdee98cad1115eb1ccbe7302dcfb4e0c8b4'

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
