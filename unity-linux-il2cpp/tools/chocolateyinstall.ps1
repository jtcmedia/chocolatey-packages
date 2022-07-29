$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/24e8595d6d43/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.7f1.exe'
$checksum64     = '8770e39f4893c85d3f2475aa163349be3e5ca9c71f0b40c8438feaa2b7e347a5'

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
