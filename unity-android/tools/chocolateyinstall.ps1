$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/240d06e2411b/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.6.0a7.exe'
$checksum64     = 'cdac3c58d6599b4d58efa4f11504087de7f431a47230951b503aec858c062a1c'

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
