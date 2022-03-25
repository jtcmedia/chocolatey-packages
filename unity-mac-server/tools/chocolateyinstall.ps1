$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/efb8f635e7b1/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.2.17f1.exe'
$checksum64     = '9a89e346f9071aba1d26292b217c83190a4eb34e4665f003a2ee693d3443b7db'

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
