$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6eacc8284459/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.0f1.exe'
$checksum64     = 'b63a949987f02176c991566890c454e6e2ffbe4c616c646b502549dc98eb6d0b'

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
