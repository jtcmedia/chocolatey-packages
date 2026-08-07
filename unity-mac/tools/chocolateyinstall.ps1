$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/53d4abb44f07/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.6.0b7.exe'
$checksum64     = '345878f8d0a8f3dff23f6c681e3a3ca2c24ff60159002e863cce76a7753764bd'

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
