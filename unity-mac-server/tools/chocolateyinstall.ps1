$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/abdb44fca7f7/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.2.13f1.exe'
$checksum64     = 'e618ea4f32d38f1b9c88d189e6eea13918f214bb862437da1f9d88584e2fd152'

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
