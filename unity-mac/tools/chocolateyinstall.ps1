$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eeca29774eb5/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.2.14f1.exe'
$checksum64     = 'd1b7df425f1feee09d051c3cc55da47bc9fdc4a1cd4c6740475b7edf0b53b007'

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
