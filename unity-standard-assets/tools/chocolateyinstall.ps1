$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/732dbf75922d/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-2018.1.5f1.exe'
$checksum64     = 'b23f8950a8a0f31f1e84677e0bd1ead52512c68239695b1e5dc4c057ce62dc72'

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
