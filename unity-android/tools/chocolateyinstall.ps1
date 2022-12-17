$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/75bff06b76bf/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.3.43f1.exe'
$checksum64     = '998ce47e4c33261079673adef7aa76c8a2718f900efa9b3789c8bf9663bdf476'

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
