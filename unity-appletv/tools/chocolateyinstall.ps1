$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8331acaee5d3/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.2.7f1.exe'
$checksum64     = '91c7c4660d82e18984c1234f4e70209cb3148ed9cd197304ee405a62fcded456'

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
