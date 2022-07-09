$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7da38d85baf6/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.3.6f1.exe'
$checksum64     = 'a3b1a9003d02c5e84d918813b54ddfd5998581f2e9b7c29bffa83fcf5e99c221'

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
