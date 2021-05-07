$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c0fade0cc7e9/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.1.6f1.exe'
$checksum64     = '9f69a8c387aba399c4af076770fc28b8e459fd2bc4e227cff72f0ac3a738594c'

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
