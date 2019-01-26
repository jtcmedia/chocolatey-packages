$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/393bae82dbb8/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2018.3.3f1.exe'
$checksum64     = '16ce3da37b7c5243a871b11fda5bd6dd5501c124fa28e253f4602153610fa6be'

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
