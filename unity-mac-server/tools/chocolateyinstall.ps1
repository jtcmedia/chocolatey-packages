$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/35a524b12060/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.1.20f1.exe'
$checksum64     = 'ddfb4a1032f33ef5bb5f6b5e153a094ebf85341c4aa15d23df2febe98244a435'

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
