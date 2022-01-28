$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/921b45a28ab6/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.2.9f1.exe'
$checksum64     = '851039922af5a3b80fd1ef100fd1c2eabfe33117611226eed771e55ea407f8c4'

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
