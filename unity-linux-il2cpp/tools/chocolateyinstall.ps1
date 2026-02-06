$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/696ec25a53d1/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.3.7f1.exe'
$checksum64     = 'd3b88aa2fd872e339ff63eaa2d54820ebd0308a922ab95e29f2c04fb3378d926'

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
