$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a18e2220bd50/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.65f1.exe'
$checksum64     = 'bbdf1509b88d3d50bfc4c6ee5321dd154362a6730d23d63a855226365badef68'

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
