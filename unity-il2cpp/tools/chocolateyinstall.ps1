$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/88933597c842/TargetSupportInstaller/UnitySetup-UWP-IL2CPP-Support-for-Editor-2018.2.17f1.exe'
$checksum64     = '2b63b7da1d49ae9c3a873b1d10dbeca8394118e343dcc06c6a3880710fffd2ab'

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
