$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/887be4894c44/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.22f1.exe'
$checksum64     = '08e88591484b23e6becd1ddb2ae3e233be39aabc14a3fd7de94c1abdbcb43b9d'

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
