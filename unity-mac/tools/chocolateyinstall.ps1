$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/38370f5b2257/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.1.12f1.exe'
$checksum64     = 'f287ab8666f09d93ebd3b55c2eb29bb3c2557cb0ed3c71f91adc95d51c716e91'

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
