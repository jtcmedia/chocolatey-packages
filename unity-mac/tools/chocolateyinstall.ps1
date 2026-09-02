$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f7f8ed4d1e24/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.6.0f1.exe'
$checksum64     = '74e85751caafc850dd32a27be36eafde4ccd33aa632e6392fe8a52a5ffae4e90'

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
