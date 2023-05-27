$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a16dc32e0ff2/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.26f1.exe'
$checksum64     = '26ea03e8492238edddd0801cb01e7c5c3cbc42d298ec5c83b5d7c9e360b06290'

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
