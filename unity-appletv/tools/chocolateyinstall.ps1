$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/530ae0ba3889/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.25f1.exe'
$checksum64     = 'd7a5417e05605391334c40c670fdeeb75b5d6b7c879a77b001477e6e02fa74cf'

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
