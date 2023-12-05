$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/dfe9eb92cac5/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.2.2f1.exe'
$checksum64     = 'eda8dd9d28b265447e7e997e3cde66202ff42f899c1e7900ddfa9129ecbcf915'

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
