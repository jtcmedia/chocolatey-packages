$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fb93bc360d3a/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.46f1.exe'
$checksum64     = '4bbc461ebe2a0a4a8128752fa376943fb69fb0ccead7a5da347681a6e15fa81e'

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
