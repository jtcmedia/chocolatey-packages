$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/88f89d0d8b31/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.77f1.exe'
$checksum64     = '191d25306895c4b3a28e0620e2bd47bd8223982eef40bd77c0abf822d5db2b9d'

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
