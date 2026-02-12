$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1c7db571dde0/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.3.8f1.exe'
$checksum64     = 'c59f0a1bdfbd39c78b3fd6ae9f4b11b858b72c1c075eb7f108de06e3b2136ddd'

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
