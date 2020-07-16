$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1f1dac67805b/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2019.4.4f1.exe'
$checksum64     = '211c2663fa5ecaa3bc6e03232ae19919f54378ff89e401fc9fe63830af6b155e'

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
