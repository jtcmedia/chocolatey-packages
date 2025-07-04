$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cf6d2d083ec9/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.2.0b8.exe'
$checksum64     = 'bd6aacffe763d2912f9f599d9d656939900f8dab5b6bb63d842ea5a2d9da1481'

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
