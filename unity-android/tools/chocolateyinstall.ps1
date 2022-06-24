$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e49a51cf6290/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.1.6f1.exe'
$checksum64     = '1d67b4276a2854044d68b81962ba5f0abc814935f1760dfa336b8420d0b90458'

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
