$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2212ba80b59e/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.6.0b4.exe'
$checksum64     = '96cb36793bcef7e43230d2a73b66af2a6b6f9a4ef4397d0284dd28802fcc3174'

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
