$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/efb8f635e7b1/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.2.17f1.exe'
$checksum64     = '91d36462a3a0897ab54b35aa019b2569264c92767165fa1db14b38c3bd1421df'

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
