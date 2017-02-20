$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-5.5.1f1.exe'
$checksum       = 'c32941c480f58d3c013a463440277c0c5529778d2e1ccf815ecd6867d7356b62'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
