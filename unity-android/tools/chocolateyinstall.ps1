$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/70558241b701/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.30f1.exe'
$checksum64     = 'bc72d3446eadc2133175b6d29655295a4214f0b3318b8bfc368b5f586ae9e08e'

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
