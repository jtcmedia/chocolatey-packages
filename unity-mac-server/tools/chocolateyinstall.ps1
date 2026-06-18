$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/240d06e2411b/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.6.0a7.exe'
$checksum64     = '692ab2ad1e1bb1d04868159368dde6e58a5afdd899082a1520c56be8f30da0b5'

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
