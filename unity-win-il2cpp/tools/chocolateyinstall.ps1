$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7a790e367ab3/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.1.9f1.exe'
$checksum64     = 'a03aef172edfad015b3de722c277c639fd511010e3bf2fec740984ca582d7dd7'

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
