$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/011206c7a712/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.35f1.exe'
$checksum64     = '733e500cc67e69d5d2fec969a959ca55f3b85b4f5a9a25fa39ce62f4ef35fc19'

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
