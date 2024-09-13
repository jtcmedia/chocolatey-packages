$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/302b264628f9/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.19f1.exe'
$checksum64     = '98d4bd462d3338e53936a439ac8945afd65f16a3bb01c58b3356fbe8173f3c24'

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
