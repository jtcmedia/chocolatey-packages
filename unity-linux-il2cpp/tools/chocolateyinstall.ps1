$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5f5eb8bbdc25/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.19f1.exe'
$checksum64     = '8b81bf1fa754bf150d2707638e1ed4a47fbcf4c02a874549d9e15d8c8928bc9b'

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
