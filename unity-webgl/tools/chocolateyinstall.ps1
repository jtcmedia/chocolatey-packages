$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c3db7f8bf9b1/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.50f1.exe'
$checksum64     = '2bedf085363deaa1992817d6457b18ac1739520abbb0c75fefd88d4de5e2aee4'

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
