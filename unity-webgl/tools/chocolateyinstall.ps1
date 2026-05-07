$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/81a3023a9d59/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.5.0b6.exe'
$checksum64     = 'f6fbd6b426f4633a485aa1513b34055e945cbd91c9f6a98a006db60d19844a99'

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
