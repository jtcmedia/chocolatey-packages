$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c3db7f8bf9b1/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.50f1.exe'
$checksum64     = '1d54bc41fd691511bc4fc80569832eca9e4258f0ed31f1a0f82f033f126ff539'

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
