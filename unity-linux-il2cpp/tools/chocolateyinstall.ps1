$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4016570cf34f/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.16f1.exe'
$checksum64     = 'b91cf99bd23852e615254769766db9c1a29663c74f5bbadf217e6e121796317b'

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
