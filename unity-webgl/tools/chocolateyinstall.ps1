$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6eacc8284459/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.3.0f1.exe'
$checksum64     = 'a1cd6c55dfb74f7c1982e019f6f0f81c844721ccadccf7f6612bcaca8cbc0497'

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
