$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0c6e675195cf/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.2.18f1.exe'
$checksum64     = '0e6a2eaea60f17659b2f83fe9274fccba0b679c1028a936daef8091611c85faf'

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
