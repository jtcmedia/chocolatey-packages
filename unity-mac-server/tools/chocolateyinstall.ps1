$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9a3bc604008a/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.35f1.exe'
$checksum64     = 'e208e97196291d754869387d853be7ee5d7a59d91711e8fa012108948448f8d1'

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
