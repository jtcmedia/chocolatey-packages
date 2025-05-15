$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f34db9734971/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.1.3f1.exe'
$checksum64     = '50cc88cb40dc4435ce3f2d13f7b73408b3b3cf64aff57789d41b573e0e92ca22'

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
