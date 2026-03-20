$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/253a859729df/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.5.0a9.exe'
$checksum64     = 'ebb3f74a3da3aeeb2e0f908c27e6cea1c9382fb7dc9b4ff32316b7a10f733917'

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
