$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/3829d7f588f3/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-5.5.2f1.exe'
$checksum       = 'c1ae6df3c0ef592d53119b910f1fc5c0c86ee7c41132df2bccea1c9f8cf756f7'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
