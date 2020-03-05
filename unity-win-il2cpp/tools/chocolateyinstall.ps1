$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/7ceaae5f7503/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.3.3f1.exe'
$checksum64     = '419862d484e10af088e2d4e0958d582d12a935d29a18d83c6f75ac34ade1836a'

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
