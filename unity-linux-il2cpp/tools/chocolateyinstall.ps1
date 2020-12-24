$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/270dd8c3da1c/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.2.1f1.exe'
$checksum64     = 'e7cc0bcbdd2b3892bfcf91c31306f8aeee838279abc2ed99d5150bd5bb3b2fcb'

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
