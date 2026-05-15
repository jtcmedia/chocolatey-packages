$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9be2869246c2/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.5.0b8.exe'
$checksum64     = '53409881d0c6818e3a50aec14a3f91def612a1aab5aeceb64b5af3450da8a981'

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
