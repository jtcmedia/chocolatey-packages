$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/157d81624ddf/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.40f1.exe'
$checksum64     = '7c1ad78bc3e4752b9d4b0c4114d1dcbe8b82c7b0c12cd6c4e9654f70f61862a0'

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
