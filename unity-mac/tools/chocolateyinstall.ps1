$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/faa32412f6c9/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.1.15f1.exe'
$checksum64     = '47ef3781d8ed4490943a134b359582400ce8887e59d8cb5281c0062ea2bda06a'

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
