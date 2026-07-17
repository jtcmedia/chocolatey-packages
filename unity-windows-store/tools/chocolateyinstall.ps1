$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c9ba695d4f07/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.3.20f1.exe'
$checksum64     = '3c6cdb9b36ea98ca0445b484ece166e7eb55f32dde8e500e5feb8af46800864b'

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
