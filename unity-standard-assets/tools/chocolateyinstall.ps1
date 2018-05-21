$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b8cbb5de9840/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-2018.1.1f1.exe'
$checksum64     = 'c482696fbb449b35053028a04cbeaecc14a35d34efa011c1bd88191a46fbc014'

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
