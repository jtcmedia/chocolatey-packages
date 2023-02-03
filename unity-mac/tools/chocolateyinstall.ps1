$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/551d45108343/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.2.5f1.exe'
$checksum64     = '745bfe527e2e80ac61980ef1305a2c84340f91ad8d21668f70d3479afa631a05'

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
