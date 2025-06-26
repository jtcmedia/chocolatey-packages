$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f57a55ac740d/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.2.0b7.exe'
$checksum64     = '33b4e18b10f49e9fbc69d7a93a280f1a076300bd4ed48ddce736fa9d56c2548f'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
