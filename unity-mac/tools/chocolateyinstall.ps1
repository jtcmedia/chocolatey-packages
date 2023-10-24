$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b84c4024cd38/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.1.17f1.exe'
$checksum64     = '5076b904a1f92caaad3f07ab69531cfedffe2b8804303588b7f23ffe3bb587ab'

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
