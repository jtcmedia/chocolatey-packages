$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/2207421190e9/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2018.2.9f1.exe'
$checksum64     = '31313f80f35eabed7fc03fee64f63d64efe55fe0d57349ee09a01904ee31ed88'

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
