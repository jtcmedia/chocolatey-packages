$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6eacc8284459/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.0f1.exe'
$checksum64     = 'b97c7b6497b1a20d6e18c11f0905fca833e6e712aab3e52398695a26a0bd6c2a'

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
