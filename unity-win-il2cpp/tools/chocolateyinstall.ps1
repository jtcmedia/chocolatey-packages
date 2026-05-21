$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a56f230f6470/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.3.16f1.exe'
$checksum64     = '95124ad5634e43daa0da1b49dfdf78825d120ca57b1102d6252eaccebc56185d'

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
