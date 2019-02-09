$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/76b3e37670a4/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2018.3.5f1.exe'
$checksum64     = '62eac2771c7ae8aa39f62a0ddf2068970146539568e6741ca925d20ae2b0d52b'

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
