$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/abdb44fca7f7/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.2.13f1.exe'
$checksum64     = '81ad7f596d65e10b32c4cb8b74381342a6920473d8d8679258562a581cbad9fd'

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
