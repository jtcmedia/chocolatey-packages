$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/accd6d46ced1/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.2.4f1.exe'
$checksum64     = 'd5d5e23b7c6c2179c5883e53948024eeb1604f58f265ffa8381a9d0011c407aa'

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
