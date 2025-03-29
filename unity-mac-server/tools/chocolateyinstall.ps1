$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/101c91f3a8fb/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.44f1.exe'
$checksum64     = 'e2f87298d5a0e1dac9ce7ec20f8b681eaa45e9106ebf98f73f265fc3ad43a040'

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
