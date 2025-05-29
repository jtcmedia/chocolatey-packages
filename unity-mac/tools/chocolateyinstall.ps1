$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/923722cbbcfc/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.1.5f1.exe'
$checksum64     = '4e96f7ba4b7af999e039871a603aaa026d4b3d97c9e3fb551e1d0e1bcf9dab2e'

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
