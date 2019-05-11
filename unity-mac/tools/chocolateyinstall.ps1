$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3e18427e571f/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.1.2f1.exe'
$checksum64     = '28c416e5b5dc64bd0ad0ea828e3e0c03e71637dc98a4bec5ce17e1be39217416'

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
