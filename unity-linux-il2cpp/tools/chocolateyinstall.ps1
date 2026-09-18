$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7efac9f6c10e/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.6.1f1.exe'
$checksum64     = 'c4d98307a1e996b17da621beefdb3fb53409c61d1d00409358b4276472eb213a'

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
