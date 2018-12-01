$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4550892b6062/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2018.2.18f1.exe'
$checksum64     = '8277cc0f4de9c8d173f4da6fb76b5208f980a4bc42c011b01f4b622eb70cb49a'

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
