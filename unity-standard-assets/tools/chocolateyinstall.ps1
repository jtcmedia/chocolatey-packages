$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/46dda1414e51/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-2017.2.0f3.exe'
$checksum64     = '605fec8eb057f61aa9cc7a9bfb01657cefb55d8498cef5adc89506fb995e4cda'

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
