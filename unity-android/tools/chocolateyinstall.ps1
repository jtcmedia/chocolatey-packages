$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/369b620af41c/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.1.0f1.exe'
$checksum64     = 'f1a451950c61b0122621f7bd19c36d8beca277a1b3403dc7a6ac93200c1f57f0'

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
