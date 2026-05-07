$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c8c45dd2de2f/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.5.0b7.exe'
$checksum64     = '040d4cba6376505d7f17cdee4558ea35dc7f285d0bd63ea8948162f3c8460b44'

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
