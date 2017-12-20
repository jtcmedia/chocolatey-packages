$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a9f86dcd79df/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-2017.3.0f3.exe'
$checksum64     = 'b68a623f1c2982315a9c5db3382e6de5ab7ea108b94c2ab7984438688fe18fc0'

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
