$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/da0c3ee78ee0/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.1.12f1.exe'
$checksum64     = '5446c55ecd375f3aba97c018b2b7a7f9aa2c45dbd5722070adcb0f14f4ca7689'

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
