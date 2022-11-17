$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9636b062134a/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.1.23f1.exe'
$checksum64     = 'f8c162268f842021e784ca40dc3e5ab3d1608b2a372b0dbcea6e7b49b33eb4f1'

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
