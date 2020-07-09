$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/f880dceab6fe/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2019.4.3f1.exe'
$checksum64     = '89fa48ff629d521b488a0634c7d210140b937fe8cd2647a09fa2f517a0f5bcb4'

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
