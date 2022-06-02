$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1cedbfe38737/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.1.3f1.exe'
$checksum64     = 'ff83efcdc4cdfc4985f296b40b559373be3b5be33086528d87a69b29178bd3a0'

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
