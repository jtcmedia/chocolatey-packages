$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/157d81624ddf/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.40f1.exe'
$checksum64     = 'e195612300d4b68935b4d4f19519061b48fc5e64e28130d36e8374f4c4b3406a'

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
