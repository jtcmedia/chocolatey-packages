$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1cedbfe38737/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.1.3f1.exe'
$checksum64     = 'a19532799200c0b094d2724d5f7b19c3e9c7e5047df9e8c4580b2533d27bd10e'

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
