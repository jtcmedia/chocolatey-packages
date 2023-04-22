$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d535843d11e1/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.2.16f1.exe'
$checksum64     = '665ed8ecc87dd412716efd7358b216055f78fecd56ac368203709dad0c7d2b4f'

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
