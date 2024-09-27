$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e2bacb8dee3a/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.21f1.exe'
$checksum64     = '68a200f6c00f52fc96a0fb461a89b0eafacbc64ebcecded4d6f8b82090f34852'

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
