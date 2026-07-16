$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2212ba80b59e/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.0b4.exe'
$checksum64     = '7bd1a805f7fd39840f0bfc41e31ba9e4f5d06ad352b38eb542a3b0526b52b4b2'

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
