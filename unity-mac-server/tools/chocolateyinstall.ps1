$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/602ecdbb2fb0/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.2.19f1.exe'
$checksum64     = 'f3d25251dbed3a62fc4194a2817a1f361642f7abec0e9c7089e334f743c6fb06'

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
