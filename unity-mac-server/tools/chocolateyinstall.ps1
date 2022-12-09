$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/35dcd44975df/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.2.0f1.exe'
$checksum64     = '1df73b265930f98235dfd17c0f0a54f612b6babb75ec73a24e63c5353898d932'

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
