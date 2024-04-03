$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7f45223012db/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2023.2.16f1.exe'
$checksum64     = '299f7bd09088396ceca7287e451370a58357d11fa8f914d4dd665b332bb58736'

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
