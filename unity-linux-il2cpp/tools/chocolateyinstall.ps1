$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0d9463e84828/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.5.1f1.exe'
$checksum64     = '6a5b6b599fc14529e84f48b6da7c12e1f37abcde1b3c45100d6cfaa8a9cdf9bd'

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
