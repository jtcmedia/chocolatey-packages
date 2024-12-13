$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a206c360e2a8/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.31f1.exe'
$checksum64     = 'f0e7b3ddd74b3c3ac5de5229e10253bc1fd095a9c36b58ea8ec7ec3166bfca5c'

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
