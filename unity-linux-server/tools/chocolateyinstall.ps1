$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2bdac9ac0d74/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.2.0b2.exe'
$checksum64     = '24d6a9a7238ba561f4c49a715f3da71fc524e3c88ec31dbf2487485cdf0fa292'

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
