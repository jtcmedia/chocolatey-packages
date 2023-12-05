$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/dfe9eb92cac5/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.2.2f1.exe'
$checksum64     = '8013b9903768301859f0fe9bbbd62af765603896c4380b6b1da6d69f91a9a8c9'

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
