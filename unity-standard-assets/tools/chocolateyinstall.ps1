$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/a2913c821e27/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.6.2f1.exe'
$checksum       = 'c66f528919418f4d56261599b4d005ca90bdbf34ff1122546608c5c424b56f63'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
