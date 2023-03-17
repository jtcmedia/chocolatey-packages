$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/1b156197d683/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.21f1.exe'
$checksum64     = '68e21299afca767a766a81ee30753b067759a300d655b17e1ed6379f1c2f691a'

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
