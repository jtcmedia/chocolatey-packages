$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f04f5427219e/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.1.12f1.exe'
$checksum64     = '40044ea41474d65b1300cd028953a64e799fafad8f99aa4d4433c46a00b9eb89'

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
