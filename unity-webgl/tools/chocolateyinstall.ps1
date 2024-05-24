$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/70558241b701/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.30f1.exe'
$checksum64     = '9776f9628d94cd2bb0574cef8d3de84c2f025c344bf07429c4a72bca7a49a249'

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
