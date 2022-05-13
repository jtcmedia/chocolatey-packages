$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/369b620af41c/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.1.0f1.exe'
$checksum64     = 'bdfc1510403ca6fcd098ef9a9823059317842c7cdb33abcf342274562946cbdf'

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
