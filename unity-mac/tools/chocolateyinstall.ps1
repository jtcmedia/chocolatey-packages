$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2fd7b40534d1/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.19f1.exe'
$checksum64     = '859a59949725db323ef39e32cba8f770179993b41434d5e91bc1add0c5d52e39'

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
