$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/afcadd793de6/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.1.12f1.exe'
$checksum64     = 'fed1c4e79de27cd7b1abd743a7b14a223e0fab1cbfdc4089c8d1827dda502258'

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
