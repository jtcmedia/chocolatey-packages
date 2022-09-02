$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/42973686a05c/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.1.15f1.exe'
$checksum64     = 'baf24ce05b4dcd1e3f6d8ad49f449444c1dbb9f53228ea4fff21ccf12d4df62c'

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
