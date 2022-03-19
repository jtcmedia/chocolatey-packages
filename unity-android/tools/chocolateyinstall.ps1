$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/559fc0ec6670/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.2.16f1.exe'
$checksum64     = '37e57941366527bb1e03e718b062eb28b7a8a6a60ec2e69bee4d00e81bb7fb1b'

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
