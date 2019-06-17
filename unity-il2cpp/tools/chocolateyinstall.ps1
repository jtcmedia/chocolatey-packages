$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f3c4928e5742/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.1.7f1.exe'
$checksum64     = '3a6cbdab379c31a6f0a42618ae8722a49f5b46f44d02b955867ad95f125042a7'

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
