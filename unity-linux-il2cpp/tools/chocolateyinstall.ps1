$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a03098edbbe0/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.13f1.exe'
$checksum64     = 'be9ee5b8bb13ea7ab1a631d24c8909c1da5a688f5446ebe5dcec8a41e01c1b0b'

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
