$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7a0645017be0/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.36f1.exe'
$checksum64     = '8dd601188728f4134169edfaeabe89ce26ce07604037c3388692e8f4e23f4c64'

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
