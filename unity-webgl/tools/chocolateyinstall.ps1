$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8c66806a0c04/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.3.37f1.exe'
$checksum64     = 'bb50da1f2345db6667613f569fb1c469c8f0a7124c4701140ad112517857fd94'

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
