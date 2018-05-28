$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/a46d718d282d/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-2018.1.2f1.exe'
$checksum64     = 'd193807b9c688d48fb8fc4e7d3d9d62cb4eb4652a0f718a028d5e7a722a1f566'

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
