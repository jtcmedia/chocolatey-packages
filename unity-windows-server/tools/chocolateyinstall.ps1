$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8a01b55183a9/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.2.0a1.exe'
$checksum64     = 'ba5e87592de85d48c67d0543ea8496477f93c12f40f33a3550a1913635adda30'

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
