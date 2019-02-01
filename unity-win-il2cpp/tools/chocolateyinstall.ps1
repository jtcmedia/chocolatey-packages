$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1d952368ca3a/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2018.3.4f1.exe'
$checksum64     = 'c3f65807b424013394ba1d65b27b919a07c7a29b658a24bd2135ed633ecb9f49'

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
