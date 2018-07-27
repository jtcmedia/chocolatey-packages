$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1a9968d9f99c/TargetSupportInstaller/UnitySetup-UWP-IL2CPP-Support-for-Editor-2018.2.1f1.exe'
$checksum64     = '5dee130fb328c517375a53c8ca066eec8ca78d4103ede2ad87520a0c0eb522d8'

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
