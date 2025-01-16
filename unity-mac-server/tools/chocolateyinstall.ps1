$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5ab2d9ed9190/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.34f1.exe'
$checksum64     = '4549af7ea5f4fafaf7d378d43e229fbd4248ace129b44d3657fda4c33e0c547b'

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
