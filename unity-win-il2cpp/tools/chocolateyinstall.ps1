$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c96f78eb5904/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.2.7f2.exe'
$checksum64     = 'ee8997fa0bf1aa98a11cfaa88fe2185c31c40b12f70e65bc1f609c3fed5dd336'

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
