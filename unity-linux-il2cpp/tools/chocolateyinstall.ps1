$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6f076387c01d/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.26f1.exe'
$checksum64     = '96eea0d01cbe8059915c4a5cc948c24a139ea7c80142d5a5a9b1c12fd4cd5e54'

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
