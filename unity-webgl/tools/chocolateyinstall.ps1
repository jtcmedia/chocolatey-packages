$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a206c360e2a8/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.31f1.exe'
$checksum64     = '0c4090083af095a704ae3b568bec28a1a55203942b690fb3c3231f5d9dfe9b6f'

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
