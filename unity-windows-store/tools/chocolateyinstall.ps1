$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3699cf869f9b/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.18f1.exe'
$checksum64     = '8911db30b1bcf1208db7e4f4185523afb72486936c60db26200ac90b598201d5'

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
