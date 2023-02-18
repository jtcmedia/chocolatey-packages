$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c9714fde33b6/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.3.19f1.exe'
$checksum64     = '1859750b7a169f1e2ac945b38ab34221dedb8a71793c5b33ad6abe5773cae938'

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
