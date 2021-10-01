$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b50729e604a9/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.1.23f1.exe'
$checksum64     = '549cb33f20423beafd2b36cad1c90e3d85275a9635dab73efefb390141404d75'

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
