$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b50729e604a9/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.23f1.exe'
$checksum64     = 'd42e139c8bec5011a6b2211b09f487089ac4881dc4585da8c176831d59bbabc3'

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
