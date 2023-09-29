$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/831263a4172c/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.1.15f1.exe'
$checksum64     = 'c4ede0a2b3a4ad984da384519e861965ed369ae4f1c7b1aaaf37aaf88302ddea'

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
