$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3b8567f665bb/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.2.15f1.exe'
$checksum64     = '2c86cf107a7a5396710782a276e8d109e392a1b2a3c72ae2d30df4f9c836cab3'

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
