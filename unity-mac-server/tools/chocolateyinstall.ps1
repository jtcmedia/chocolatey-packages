$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/377f5a9787ef/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.2.0b9.exe'
$checksum64     = '1b9cfb30bca91681f724c56c2cf1bf60303ec30485c6abab79ee7c2eff84b0c5'

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
