$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3b8567f665bb/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.2.15f1.exe'
$checksum64     = '59e7ce333901b58d3c3775243328621054e20bfc0199f73633f879c668ed1b54'

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
