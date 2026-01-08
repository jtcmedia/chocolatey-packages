$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a18e2220bd50/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.65f1.exe'
$checksum64     = 'e6d644ade929bc5f5d701f35007b3eb6c2d54922a379c72e653c08e5a999f659'

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
