$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7dd95c051e11/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.7f1.exe'
$checksum64     = 'ee9f8b2e5b13d3b46704ac2a68705eecbad6df025a995afe9f40b92073cabd9c'

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
