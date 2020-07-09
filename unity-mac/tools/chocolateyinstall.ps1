$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/f880dceab6fe/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.4.3f1.exe'
$checksum64     = '634036816ddc174e1f7f4c31691ede849f78f8a1b2489ff421eb28ab27d97d75'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
