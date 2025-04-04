$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6bc6fbc26ac6/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.2.0a8.exe'
$checksum64     = 'ae0c3902d8d03d3746968c0a64a4041eabf6dc8fed15a86df7e093620422fb48'

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
