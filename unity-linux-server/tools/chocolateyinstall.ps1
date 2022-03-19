$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/559fc0ec6670/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.2.16f1.exe'
$checksum64     = 'f043f790f616b0d30f3da94069b892e01a3995bd440c37522336ca695a32a76b'

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
