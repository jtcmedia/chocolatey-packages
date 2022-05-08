$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d6360bedb9a0/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.3.2f1.exe'
$checksum64     = 'cc49a574659d2a6a7ebae3ca0d4397176b643e2527e9fad28bf99ed617486d26'

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
