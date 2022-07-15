$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/07e076b6d414/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.1.9f1.exe'
$checksum64     = '9366e4b36cae58715a09282b6c7fdf9ef241714508e6efd27f2a1d6f8934237f'

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
