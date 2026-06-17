$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/88b47c5e7076/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.5.0f1.exe'
$checksum64     = 'e81ef799dae9b2b63d98b06624a01ef9a2b8af6b6703003afb192b4d177b9df4'

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
