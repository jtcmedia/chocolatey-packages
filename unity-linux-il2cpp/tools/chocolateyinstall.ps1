$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2b639e48c919/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.1.18f1.exe'
$checksum64     = '7a7ff41abb16d9c8294b2c64a8a3c3a8ddf668676e15f23227085bb0af57aff6'

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
