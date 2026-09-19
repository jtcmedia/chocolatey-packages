$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/770e33f6875c/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.2f1.exe'
$checksum64     = '9b5e7a3d31395a8ed230e368810aae91aef39b5ee4bde69ffa75f8e1c00a8b25'

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
