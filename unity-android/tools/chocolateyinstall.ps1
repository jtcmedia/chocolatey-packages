$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5ef4f5b5e2d4/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.3.47f1.exe'
$checksum64     = 'd85ae146f1ed9f1a00ac9b248e4ed57cefda3ac228c4726df81762f0e5f4117c'

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
