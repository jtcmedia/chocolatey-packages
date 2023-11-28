$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a6dd9a634651/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.2.1f1.exe'
$checksum64     = '34e09e70a263f4233503ca04f01394fe10c10e3c76f2cfcff3c46b1f8a2b6e40'

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
