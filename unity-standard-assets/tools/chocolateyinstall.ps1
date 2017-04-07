$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/497a0f351392/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.6.0f3.exe'
$checksum       = '17f1e6e36437e5cc5e8ed3f68aa736533f3eeca2da417f3c8e71ad2c9307a1e3'

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
