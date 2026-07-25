$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d16e074b49fd/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.5.5f1.exe'
$checksum64     = 'eace9ead972e3df89cf79a839ed3dfdb3df616adf0e14c0dc1f03bcfe07c5b28'

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
