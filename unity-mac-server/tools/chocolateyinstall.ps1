$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/55300504c302/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.2.1f1.exe'
$checksum64     = '1161bcd75336425536e3b85882c020c523f271249f8067e1d271464f5356e22f'

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
