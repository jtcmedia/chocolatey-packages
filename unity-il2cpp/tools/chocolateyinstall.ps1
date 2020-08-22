$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/cf5c4788e1d8/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.1.3f1.exe'
$checksum64     = 'a2ea90b918bf98f53655193aa80a0bf2ad7c86badcb3c82ebf301dfa331d542f'

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
