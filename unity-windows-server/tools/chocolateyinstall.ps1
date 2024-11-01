$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4859ab7b5a49/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.25f1.exe'
$checksum64     = 'c2cb2c8bdc50fabe6280ea65125548f94ea3e4ad1bb6bdd1e95e2fdd2061f4dc'

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
