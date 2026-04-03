$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/64de5ee36373/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.6.0a2.exe'
$checksum64     = 'd306532f101fd0e011e98dae8201568f33634c0f19ec3e945cc239496ed75fc8'

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
