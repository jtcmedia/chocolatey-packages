$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4d8c25f7477e/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.1.11f1.exe'
$checksum64     = '8dcd11f76f74a2175e8c46d5d0198b7d02021899cc1aad3731a80079585f3e1f'

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
