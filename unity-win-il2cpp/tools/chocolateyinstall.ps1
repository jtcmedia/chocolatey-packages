$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d36222f39966/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.5.0a8.exe'
$checksum64     = '90be73f5471c12a16c4c74d47693c8f102f6222f3fed581b3ed26c80d406190b'

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
