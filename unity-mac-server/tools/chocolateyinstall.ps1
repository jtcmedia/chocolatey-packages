$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d91bd3d4e081/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.45f1.exe'
$checksum64     = '3858abc390270cb9d2fc81df767a7426881255adc52542609ac2de1416315cdb'

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
