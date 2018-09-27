$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/674aa5a67ed5/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2018.2.10f1.exe'
$checksum64     = '2496eefc7912719d4b6ae8806069e98071d6fa537bd46b8914663fa1bee4527a'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
