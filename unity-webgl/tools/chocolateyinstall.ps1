$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/244b723c30a6/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.19f1.exe'
$checksum64     = 'b483335c3bcc0a7b777a9511dd254a8a86809e8f45a27d72b66f8d3318da2222'

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
