$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/602ecdbb2fb0/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.2.19f1.exe'
$checksum64     = 'f6f9f28c55b61868989fc49ed36968f6dc2e7c82297ecc9fc235ff48842da109'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
