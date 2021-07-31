$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5fa502fca597/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.1.16f1.exe'
$checksum64     = 'ea57d66b49d0351e56fca88b92ddbebf698dbf0f7f9d361c1340473072322705'

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
