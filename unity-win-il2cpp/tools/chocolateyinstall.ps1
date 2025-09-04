$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b7b9860b7bbd/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.57f1.exe'
$checksum64     = '8aac024af9340207c9b4f8ae879242f33636b7587abb75e9dc39bfdb65bc2957'

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
