$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/497a0f351392/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-5.6.0f3.exe'
$checksum       = 'b28f0f3b309912f57062fe79405689397f2ddce52f90a98028c24f6ec9bb0145'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
