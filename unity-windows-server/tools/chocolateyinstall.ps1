$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9dce81d9e7e0/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.1.5f1.exe'
$checksum64     = '9667eba3d67225241bd989518426d4e920e307417f4888129071cc247ea6541c'

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
