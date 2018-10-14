$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/0a46ddfcfad4/TargetSupportInstaller/UnitySetup-UWP-IL2CPP-Support-for-Editor-2018.2.12f1.exe'
$checksum64     = 'b3391cfa3e5558fae2de9b0def902e9f0933bb219e116c2f996bdd07c2b7524b'

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
