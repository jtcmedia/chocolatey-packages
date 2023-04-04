$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5f5de2657605/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.2.13f1.exe'
$checksum64     = '6f929c78e9538736c174bcf7e8bc218bf00b8cc616881353ef498a0b0a33d642'

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
