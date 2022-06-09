$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/76dd1f94b339/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.4f1.exe'
$checksum64     = 'a61b95dfb689cde7380888a220d542b8baa3192f0b7da1d1111887dbaee0b9f5'

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
