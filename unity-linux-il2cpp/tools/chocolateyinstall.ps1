$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6bd9e232123f/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.7f1.exe'
$checksum64     = 'd4b540d894c93e6ba33ca42c7bc9a47fadc7aa46fa1a1bbf09224790e43096f6'

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
