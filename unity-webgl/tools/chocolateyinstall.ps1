$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/dbb3f7c5b5c6/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.23f1.exe'
$checksum64     = 'f6348dcff69533460da348e6bf927a47a5167aac22c7ca8d9134d4a50804a2b0'

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
