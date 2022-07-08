$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2961e8c2b463/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.1.8f1.exe'
$checksum64     = '2d28a3d4226808d0f12246037cccf304080248594d95a424eb9c45c5745c56c0'

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
