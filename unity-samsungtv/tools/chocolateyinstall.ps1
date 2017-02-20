$ErrorActionPreference = 'Stop';

$packageName    = 'unity-samsungtv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-Samsung-TV-Support-for-Editor-5.5.1f1.exe'
$checksum       = '0c152d659e8a0ed55f49db44eb05c591e2140bad7bf49d1cb151293def366e0c'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
